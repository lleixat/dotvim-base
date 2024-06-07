command! -range OnboardingFormatEmailList <line1>,<line2>call EmailListToJsonDict()
command! OnboardThis :call OnboardThis()

command! PlugReload :call PlugReload()
autocmd BufWritePost plug.vim PlugReload

command -nargs=1 -complete=file -bar CleverOpen :call OpenInSplitIfBufferDirty(<q-args>)

command! EditVimPlug :call OpenInSplitIfBufferDirty(g:plug_file)
command! EditVimConfig :call OpenInSplitIfBufferDirty(g:portable . '/vimrc')
command! EditVimHelpers :call OpenInSplitIfBufferDirty(g:portable . '/etc/helpers.vim')
command! EditShellEnv :call OpenInSplitIfBufferDirty($HOME . '/.oh-my-zsh/custom/environment.zsh')
command! EditSshConfig :call OpenInSplitIfBufferDirty($HOME . '/.ssh/config')

command! Push2Bootstrap p:call Push2Bootstrap()

autocmd FileType ansible-vault exec "!ansible-vault edit %"
