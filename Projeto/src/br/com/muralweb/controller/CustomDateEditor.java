package br.com.muralweb.controller;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.util.StringUtils;



public class CustomDateEditor extends PropertyEditorSupport {
	private List<SimpleDateFormat> listDateFormat = null;

	public CustomDateEditor(String... datePatterns) {
		if (datePatterns == null || datePatterns.length == 0) {
			throw new IllegalArgumentException(
					"Parameter datePatterns must be not null and not empty.");
		}
		this.listDateFormat = new ArrayList<SimpleDateFormat>();

		for (int i = 0; i < datePatterns.length; i++)
			this.listDateFormat.add(i, new SimpleDateFormat(datePatterns[i]));

	}

	/**
	 * Parse the Date from the given text, using the specified DateFormat.
	 * LEMBRANDO QUE ESSE MÉTODO ACEITA UMA LISTA DE PATTERNS
	 */
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if (!StringUtils.hasText(text)) {
			this.setValue(null);
			return;
		}

		for (int i = 0; i < this.listDateFormat.size(); i++) {
			try {
				this.setValue(this.listDateFormat.get(i).parse(text));
				return;
			} catch (ParseException ex) {
				System.out.println("Parse error on String to Date convertion.");
			}
		}
		throw new IllegalArgumentException("Could not parse date: " + text);
	}

}
