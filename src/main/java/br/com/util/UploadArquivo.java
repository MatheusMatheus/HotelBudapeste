package br.com.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class UploadArquivo {
	byte[] upload() throws FileNotFoundException {
		File file = new File("");
		byte[] fotoBytes = new byte[(int) file.length()];
		try {
			FileInputStream stream = new FileInputStream(file);
			try {
				stream.read(fotoBytes);
				stream.close();
				return fotoBytes;
			} catch (IOException ie) {
				System.out.println("Erro ao abrir o arquivo");
			}
		} catch (FileNotFoundException fnfe) {
			System.out.println("Erro ao ler arquivo");
		}
		return fotoBytes;
	}
}
