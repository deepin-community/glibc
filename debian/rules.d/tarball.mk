GLIBC_GIT = https://sourceware.org/git/glibc.git
GLIBC_BRANCH = release/$(DEB_VERSION_UPSTREAM)/master
GLIBC_TAG = glibc-$(DEB_VERSION_UPSTREAM)
GLIBC_CHECKOUT = glibc-checkout
GIT_UPDATES_DIFF = debian/patches/git-updates.diff

# Note: 'git archive' doesn't support https remotes, so 'git clone' is used as a first step

update-from-upstream:
	dh_testdir
	git clone --bare $(GLIBC_GIT) $(GLIBC_CHECKOUT)
	h=$$(git -C $(GLIBC_CHECKOUT) rev-parse $(GLIBC_BRANCH)); \
	echo "GIT update of $(GLIBC_GIT)/$(GLIBC_BRANCH) from $(GLIBC_TAG) to $$h" > $(GIT_UPDATES_DIFF)
	echo "" >> $(GIT_UPDATES_DIFF)
	git -C $(GLIBC_CHECKOUT) diff --no-renames $(GLIBC_TAG) $(GLIBC_BRANCH) -- . ':!manual' >> $(GIT_UPDATES_DIFF)
	rm -rf $(GLIBC_CHECKOUT)
