package com.ld.poetry.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/**
 * <p>
 * 修改密码
 * </p>
 *
 * @author maoye
 * @since 20230618
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Password {
    private String oldPassword;
    private String newPassword;
    private String newPassword2;
}