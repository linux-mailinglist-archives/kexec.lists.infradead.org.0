Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9481D5864
	for <lists+kexec@lfdr.de>; Fri, 15 May 2020 19:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3h8ElOIwtA2VHbfJKtQDSGUNzy/lPlyq0GUJfF376So=; b=uGxA14q2ZOA2UI
	Fn3V6jgNmmfPN4evk7DXuG3Fcj7rC53vb9X1gyPAORFfTJaiypZndrcEO+1lml1sWtouGxGr7TxbU
	rNsP99mkICQ2iSZiDeiJUh3N1S24RpMma+DSIqdG38YiT30rtGZPrgJ2EJRy2U717mWeuJGnFMOjX
	goku5NOnZ8gKBH3vu9iwoo2HUa06G7HAZ/Bt8gD19UufPB+dLcU8qavuT48DCS7Z/u4NSfrUDwtHg
	ya1KUtQ2RLitSF6wo8Lky6Y2X2tF2jvy3dGTyk9Mq0ouSEmqgaJt+DdoRfyjcL5nFRdFknI6vyEGk
	7sERKcWXau6tj0THRgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZeYb-0003Sq-U7; Fri, 15 May 2020 17:55:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZeYY-0003Rg-A0
 for kexec@lists.infradead.org; Fri, 15 May 2020 17:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589565332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=PfIWRsElvqGc1a1ZBGt5Fj6BS3GWuiq8tGXZcYtnc2s=;
 b=iMDBugxfa+bBJPgvoRqk9fDMtGcVDw2SXqi48LnAylw1Y1QhCryRS/XTsQsrefjE69V8VD
 SDXV/KtdmWZZTrDt8nM9P5VLcnK2X8cMpOYdcvIbaaGsZBucsSzb+D7S9GXNQeixmGSRmB
 FKjRh47fy7boB9OqOrvz0JSGKnMDX3E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-ugvvugxwPda0kLyZTmCMoA-1; Fri, 15 May 2020 13:55:29 -0400
X-MC-Unique: ugvvugxwPda0kLyZTmCMoA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B03368005AD;
 Fri, 15 May 2020 17:55:24 +0000 (UTC)
Received: from optiplex-lnx.redhat.com (unknown [10.10.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CFE111C8;
 Fri, 15 May 2020 17:55:14 +0000 (UTC)
From: Rafael Aquini <aquini@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5] kernel: add panic_on_taint
Date: Fri, 15 May 2020 13:55:02 -0400
Message-Id: <20200515175502.146720-1-aquini@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_105534_425241_5B5E39A4 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, bhe@redhat.com,
 corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com,
 rpalethorpe@suse.de, keescook@chromium.org, jikos@kernel.org, cai@lca.pw,
 bunk@kernel.org, tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, kexec@lists.infradead.org, mcgrof@kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Analogously to the introduction of panic_on_warn, this patch introduces a kernel
option named panic_on_taint in order to provide a simple and generic way to stop
execution and catch a coredump when the kernel gets tainted by any given flag.

This is useful for debugging sessions as it avoids having to rebuild the kernel
to explicitly add calls to panic() into the code sites that introduce the taint
flags of interest. For instance, if one is interested in proceeding with a
post-mortem analysis at the point a given code path is hitting a bad page
(i.e. unaccount_page_cache_page(), or slab_bug()), a coredump can be collected
by rebooting the kernel with 'panic_on_taint=0x20' amended to the command line.

Another, perhaps less frequent, use for this option would be as a mean for
assuring a security policy case where only a subset of taints, or no single
taint (in paranoid mode), is allowed for the running system.
The optional switch 'nousertaint' is handy in this particular scenario,
as it will avoid userspace induced crashes by writes to sysctl interface
/proc/sys/kernel/tainted causing false positive hits for such policies.

Suggested-by: Qian Cai <cai@lca.pw>
Signed-off-by: Rafael Aquini <aquini@redhat.com>
---
Changelog:
* v2: get rid of unnecessary/misguided compiler hints		(Luis)
      enhance documentation text for the new kernel parameter	(Randy)
* v3: drop sysctl interface, keep it only as a kernel parameter	(Luis)
* v4: change panic_on_taint input from alphabetical taint flags
      to hexadecimal bitmasks, for clarity and extendability	(Luis)
* v5: add doc note on the potential effects of panic_on_taint
      with notaintuser on writes to kernel.tainted sysctl knob	(Luis)

 Documentation/admin-guide/kdump/kdump.rst     |  8 +++++
 .../admin-guide/kernel-parameters.txt         | 13 +++++++
 Documentation/admin-guide/sysctl/kernel.rst   |  7 ++++
 include/linux/kernel.h                        |  3 ++
 kernel/panic.c                                | 34 +++++++++++++++++++
 kernel/sysctl.c                               | 11 +++++-
 6 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kdump/kdump.rst b/Documentation/admin-guide/kdump/kdump.rst
index ac7e131d2935..2da65fef2a1c 100644
--- a/Documentation/admin-guide/kdump/kdump.rst
+++ b/Documentation/admin-guide/kdump/kdump.rst
@@ -521,6 +521,14 @@ will cause a kdump to occur at the panic() call.  In cases where a user wants
 to specify this during runtime, /proc/sys/kernel/panic_on_warn can be set to 1
 to achieve the same behaviour.
 
+Trigger Kdump on add_taint()
+============================
+
+The kernel parameter panic_on_taint facilitates a conditional call to panic()
+from within add_taint() whenever the value set in this bitmask matches with the
+bit flag being set by add_taint().
+This will cause a kdump to occur at the add_taint()->panic() call.
+
 Contact
 =======
 
diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index d9197499aad1..27b988acb4db 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3422,6 +3422,19 @@
 			bit 4: print ftrace buffer
 			bit 5: print all printk messages in buffer
 
+	panic_on_taint=	Bitmask for conditionally call panic() in add_taint()
+			Format: <hex>[,nousertaint]
+			Hexadecimal bitmask representing the set of TAINT flags
+			that will cause the kernel to panic when add_taint() is
+			called with any of the flags in this set.
+			The optional switch "nousertaint" can be utilized to
+			prevent userspace forced crashes by writing to sysctl
+			/proc/sys/kernel/tainted any flagset matching with the
+			bitmask set on panic_on_taint.
+			See Documentation/admin-guide/tainted-kernels.rst for
+			extra details on the taint flags that users can pick
+			to compose the bitmask to assign to panic_on_taint.
+
 	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
 			on a WARN().
 
diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
index c6c27db68d4c..427ce0a86b36 100644
--- a/Documentation/admin-guide/sysctl/kernel.rst
+++ b/Documentation/admin-guide/sysctl/kernel.rst
@@ -1241,6 +1241,13 @@ ORed together. The letters are seen in "Tainted" line of Oops reports.
 
 See :doc:`/admin-guide/tainted-kernels` for more information.
 
+Note:
+  writes to this sysctl interface will fail with ``EINVAL`` if the kernel is
+  booted with the command line option ``panic_on_taint=<bitmask>,nousertaint``
+  and any of the ORed together values being written to ``tainted`` match with
+  the bitmask declared on panic_on_taint.
+  See :doc:`/admin-guide/kernel-parameters` for more details on that particular
+  kernel command line option and its optional ``nousertaint`` switch.
 
 threads-max
 ===========
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 04a5885cec1b..82d91547d122 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -534,6 +534,8 @@ extern int panic_on_oops;
 extern int panic_on_unrecovered_nmi;
 extern int panic_on_io_nmi;
 extern int panic_on_warn;
+extern unsigned long panic_on_taint;
+extern bool panic_on_taint_nousertaint;
 extern int sysctl_panic_on_rcu_stall;
 extern int sysctl_panic_on_stackoverflow;
 
@@ -602,6 +604,7 @@ extern enum system_states {
 #define TAINT_AUX			16
 #define TAINT_RANDSTRUCT		17
 #define TAINT_FLAGS_COUNT		18
+#define TAINT_FLAGS_MAX			((1UL << TAINT_FLAGS_COUNT) - 1)
 
 struct taint_flag {
 	char c_true;	/* character printed when tainted */
diff --git a/kernel/panic.c b/kernel/panic.c
index ec6d7d788ce7..85568bbfb12b 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -52,6 +52,8 @@ static int pause_on_oops_flag;
 static DEFINE_SPINLOCK(pause_on_oops_lock);
 bool crash_kexec_post_notifiers;
 int panic_on_warn __read_mostly;
+unsigned long panic_on_taint;
+bool panic_on_taint_nousertaint = false;
 
 int panic_timeout = CONFIG_PANIC_TIMEOUT;
 EXPORT_SYMBOL_GPL(panic_timeout);
@@ -442,6 +444,11 @@ void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
 		pr_warn("Disabling lock debugging due to kernel taint\n");
 
 	set_bit(flag, &tainted_mask);
+
+	if (tainted_mask & panic_on_taint) {
+		panic_on_taint = 0;
+		panic("panic_on_taint set ...");
+	}
 }
 EXPORT_SYMBOL(add_taint);
 
@@ -697,3 +704,30 @@ static int __init oops_setup(char *s)
 	return 0;
 }
 early_param("oops", oops_setup);
+
+static int __init panic_on_taint_setup(char *s)
+{
+	char *taint_str;
+
+	if (!s)
+		return -EINVAL;
+
+	taint_str = strsep(&s, ",");
+	if (kstrtoul(taint_str, 16, &panic_on_taint))
+		return -EINVAL;
+
+	/* make sure panic_on_taint doesn't hold out-of-range TAINT flags */
+	panic_on_taint &= TAINT_FLAGS_MAX;
+
+	if (!panic_on_taint)
+		return -EINVAL;
+
+	if (s && !strcmp(s, "nousertaint"))
+		panic_on_taint_nousertaint = true;
+
+	pr_info("panic_on_taint: bitmask=0x%lx nousertaint_mode=%sabled\n",
+		panic_on_taint, panic_on_taint_nousertaint ? "en" : "dis");
+
+	return 0;
+}
+early_param("panic_on_taint", panic_on_taint_setup);
diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 349cab382081..c8ec67c1e137 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -865,11 +865,20 @@ static int proc_taint(struct ctl_table *table, int write,
 		return err;
 
 	if (write) {
+		int i;
+
+		/*
+		 * If we are relying on panic_on_taint not producing
+		 * false positives due to userspace input, bail out
+		 * before setting the requested taint flags.
+		 */
+		if (panic_on_taint_nousertaint && (tmptaint & panic_on_taint))
+			return -EINVAL;
+
 		/*
 		 * Poor man's atomic or. Not worth adding a primitive
 		 * to everyone's atomic.h for this
 		 */
-		int i;
 		for (i = 0; i < TAINT_FLAGS_COUNT; i++)
 			if ((1UL << i) & tmptaint)
 				add_taint(i, LOCKDEP_STILL_OK);
-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
