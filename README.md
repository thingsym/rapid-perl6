# Rapid Perl6

Rapid Perl6 is Vagrant environment for the Perl 6 programming language.

## Provisioning

	# install Vagrant plugin
	vagrant plugin install vagrant-hostsupdater

	cd rapid-perl6
	vagrant up
	
	...
	
	vagrant ssh

## Version

	cd /home/vagrant/perl6/bin
	./perl6 -v
	This is perl6 version 2015.01-194-g5bb1942 built on MoarVM version 2015.01-72-g9106bee
	
OR

	cd /home/vagrant/perl6/bin
	./perl6 -V
	...

## Help

	cd /home/vagrant/perl6/bin
	./perl6 -h

## hello world!

	cd /home/vagrant/perl6/bin
	./perl6
	> say 'hello world!';
	hello world!
	> exit;

## hello world! (helloworld.pl)

	#!/usr/bin/env perl6
	say q/hello world!/;
	1;

## Run helloworld.pl

	cd /home/vagrant/perl6/bin
	./perl6 /vagrant/helloworld.pl
	hello world!

## Reference

* [Perl6 の開発先端を味わう方法 - tokuhirom's blog](http://blog.64p.org/entry/2015/02/02/202811)
* [Perl 6](http://perl6.org)
* [Perl 6 Documentation](http://doc.perl6.org)
* [Rakudo Perl 6](http://rakudo.org)

## Contribution

### Patches and Bug Fixes

Small patches and bug reports can be submitted a issue tracker in Github. Forking on Github is another good way. You can send a pull request.

1. Fork [Rapid Perl6](https://github.com/thingsym/rapid-perl6) from GitHub repository
2. Create a feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Create new Pull Request

## License

distributed under [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html).
