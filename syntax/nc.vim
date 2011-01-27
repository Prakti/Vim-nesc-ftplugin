" Vim syntax file
" Language:	NesC
" Maintainer:	Lau Ming Leong <http://aming.no-ip.com>
" Version:	1.0
" Last Change:	2007 Apr 01
" Description:	Modified from syntax/cpp.vim by Ken Shan <ccshan@post.harvard.edu>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Read the C syntax to start with
if version < 600
	so <sfile>:p:h/c.vim
else
	runtime! syntax/c.vim
	unlet b:current_syntax
endif

"Nesc extensions
syn keyword ncFunction		command event task interface
syn keyword ncCall		call post signal
syn keyword ncPreProc		includes
syn keyword ncInterface		module implementation configuration generic
syn keyword ncWiring		provides uses components as new
syn keyword ncConstant		SUCCESS FAIL EOFF ESIZE EBUSY EALREADY ENOMEN ERETRY ERESERVE ECANCEL ENOACK
syn keyword ncBoolean		TRUE FALSE
syn keyword ncModifier          async atomic norace
syn keyword ncTypes             bool am_id_t am_addr_t am_group_t nx_struct nx_uint8_t nx_uint16_t nx_uint32_t message_t error_t

" Default highlighting
command -nargs=+ HiLink hi def link <args>
HiLink ncBoolean	Boolean
HiLink ncFunction	Type
HiLink ncTypes          Type
HiLink ncCall		Statement
HiLink ncPreproc	Structure
HiLink ncInterface	Structure
HiLink ncWiring		Statement
HiLink ncConstant	Constant
HiLink ncModifier       Statement
delcommand HiLink

let b:current_syntax = "nc"

" vim: ts=8
