#!/usr/bin/perl

# Set these for your situation
my $CROSSFIREDIR = "/home/crossfire/crossfire-startup";
my $BACKUPDIR = "/home/crossfire/backups";
my $TARCMD = "/bin/tar czf";

#-------------------
# No changes below here...
#-------------------
my $VERSION = "1.0";

print "Crossfire Server Backup version $VERSION\n";
print "========================\n";
if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/crossfirebackup-5.tgz")
{
	unlink("$BACKUPDIR/crossfirebackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/crossfirebackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/crossfirebackup-4.tgz")
{
	rename("$BACKUPDIR/crossfirebackup-4.tgz", "$BACKUPDIR/crossfirebackup-5.tgz");
}
if (-f "$BACKUPDIR/crossfirebackup-3.tgz")
{
	rename("$BACKUPDIR/crossfirebackup-3.tgz", "$BACKUPDIR/crossfirebackup-4.tgz");
}
if (-f "$BACKUPDIR/crossfirebackup-2.tgz")
{
	rename("$BACKUPDIR/crossfirebackup-2.tgz", "$BACKUPDIR/crossfirebackup-3.tgz");
}
if (-f "$BACKUPDIR/crossfirebackup-1.tgz")
{
	rename("$BACKUPDIR/crossfirebackup-1.tgz", "$BACKUPDIR/crossfirebackup-2.tgz");
}
print "Done\nCreating New Backup: ";
system("$TARCMD $BACKUPDIR/crossfirebackup-1.tgz $CROSSFIREDIR");
print("Done!\n");
exit 0;
