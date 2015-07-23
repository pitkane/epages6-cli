
use strict;
use feature 'say';

use Cwd;
use IPC::Cmd qw ( can_run );

unless (can_run('git')) {
    say 'git not found, attempt to install it ...';
    say `yum -y install git`;
}

say 'clone epages6-cli repo';

chdir $ENV{'EPAGES'};
my $epages_dir = getcwd();

say `git clone https://github.com/ePages-rnd/epages6-cli.git`;

my $bashrc = '/root/.bashrc';
my $bashrc_ext = <<END;
export EPAGES_CLI=\$EPAGES/epages6-cli
chmod a+x \$EPAGES_CLI/ep6-*
export PATH=\$EPAGES_CLI:\$PATH
END

open BASHRC, '>>', $bashrc;
print BASHRC $bashrc_ext;
close BASHRC;

`source $bashrc`;
