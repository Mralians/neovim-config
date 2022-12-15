let s:matches="dnl AC_PREREQ(version) AC_REVISION() AC_INIT(package,version,[bug-report],[tarname],[url]) AC_SUBST() AC_PREFIX_DEFAULT(prefix) AC_PREFIX_PROGRAM(program) AC_OUTPUT() AC_CONFIG_FILES(file...,[cmds],[init-cmds]) AC_CONFIG_COMMANDS(tag...,[cmds],[init-cmds]) AC_MSG_WARN(problem-description) AC_MSG_FAILURE(error-description,[exit-status]) AC_MSG_ERROR(error-description,[exit-status]) AC_MSG_NOTICE(message) AC_MSG_RESULT(result-description) AC_MSG_CHECKING(feature-description) AC_SET_MAKE() AC_PREFIX_DEFAULT() m4_define() AC_CONFIG_COMMANDS_PRE(cmds) AC_CONFIG_COMMANDS_POST(cmds) AC_CONFIG_HEADERS(header...,[cmds],[init-cmds]) AH_HEADER AC_CONFIG_MACRO_DIR([path]) AC_CONFIG_SRCDIR([path]) AM_INIT_AUTOMAKE([...]) m4_ifdef(...) AM_MAINTAINER_MODE([...]) AC_PROG_CC AC_PROG_CXX AC_USE_SYSTEM_EXTENSIONS AC_HEADER_STDC AM_PROG_CC_C_O AM_PROG_CC_C_O AX_CXX_COMPILE_STDCXX([...]) AC_SYS_LARGEFILE AC_DEFINE([...]) AC_DEFINE_UNQUOTED([...]) AC_CHECK_DECLS([...]) AS_HELP_STRING[(...)] AC_LANG_PUSH([...]) AC_LANG_POP([...]) AS_HELP_STRING([...]) AC_PATH_PROG[(...)] AC_CHECK_HEADERS[(...)] AC_HEADER_TIOCGWINSZ AC_CHECK_FUNCS[(...)] AC_CHECK_TYPES([...]) "

function! csscomplete#CompleteFA(findstart, base)
    if a:findstart
        " locate the start of the word
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] =~ '.' || line[start - 1] =~ '-')
            let start -= 1
        endwhile
        return start
    else
        " find classes matching "a:base"
        let res = []
        for m in split(s:matches)
            if m =~ '^' . a:base
                call add(res, m)
            endif
        endfor
        return res
    endif
endfun

