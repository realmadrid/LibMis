package com.libmis.util;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.libmis.model.Authority;
import com.libmis.model.Role;
import com.libmis.model.User;
import com.libmis.service.UserService;

public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserService userService;

	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		User user = userService.getByName(username);
		if (user == null) {
			throw new UsernameNotFoundException("用户" + username + " 不存在");
		}

		Set<GrantedAuthority> grantedAuthorities =obtainGrantedAuthorities(user);

		MyUserDetails myUserDetails = new MyUserDetails(user.getUsername(), user
				.getPassword(), grantedAuthorities);

		return myUserDetails;
	}

	private Set<GrantedAuthority> obtainGrantedAuthorities(User user) {
		Set<GrantedAuthority> grantedAuthorities=new HashSet<GrantedAuthority>();
		for(Role role:user.getRoles()){
			for(Authority authority:role.getAuthorities()){
				grantedAuthorities.add(new GrantedAuthorityImpl(authority.getName()));
			}
		}
		return grantedAuthorities;
	}

	public UserService getUserService() {
		return userService;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
