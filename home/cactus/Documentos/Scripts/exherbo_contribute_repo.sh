git clone https://galileo.mailstation.de/gerrit/media
cp /var/db/paludis/repositories/cactus.old/packages/media-video/xine-ui/xine-ui-0.99.9.exheres-0 packages/media-video/xine-ui/xine-ui-0.99.9.exheres-0
curl -o ./.git/hooks/commit-msg https://galileo.mailstation.de/gerrit/tools/hooks/commit-msg
chmod a+x .git/hooks/commit-msg
git commit -am "xine-ui: Add support for jpeg-turbo"
git push origin HEAD:refs/for/master
hMs8JW02240uM7FfcAsGtv53Rli0wcd0R9QajUuu1A
