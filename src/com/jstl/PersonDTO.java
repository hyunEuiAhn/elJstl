package com.jstl;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

//@Data
@RequiredArgsConstructor
@AllArgsConstructor
@Getter
//@NoArgsConstructor
public class PersonDTO {
	private String name;
	private int age;
}
