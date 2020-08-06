package com.vvs.resume.exception;

public class CantCompleteClientRequestException extends RuntimeException {

	private static final long serialVersionUID = 7458614446730309978L;

	public CantCompleteClientRequestException(String message) {
		super(message);
	}

	public CantCompleteClientRequestException(Throwable cause) {
		super(cause);
	}

	public CantCompleteClientRequestException(String message, Throwable cause) {
		super(message, cause);
	}
}
