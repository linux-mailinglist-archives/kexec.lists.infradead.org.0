Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0411CC1F6
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 15:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GfzxPh6f0fGe09jRQ6npxXADvWJeQIt0WJl/j2Y4lZM=; b=nT9eNaMVadGzCQ
	NrLtWgLxuNTM0roeiS7kuqxdEuX/Skhr6IzjXn59fGixqP8CWpa22eofD7OfbbTRRRNM+3r3ORB0Y
	GnyyS6BK5K8YEDl3zMFSaMtADxiJWHHIqkkP/u7PNFAlq6iecrPZ9EEEadR6tRTiWCAhP7g2Yi7Ac
	J2zYhEbEfisolLR84mQs6ZYXB39bjGh4+TsDTA57B7hf3ElIHXbZp/LNo1gl0Ga+3Op9xd+gk5Fsx
	3D2uGyzr2g7BgPRimMX84k0PsjR2Cu0hlNlT1bzmN9VVmDuSWFdYiUAFpRmRTOz+KPMKMacZWAm4g
	GkUs8PM9OTD3awlsgGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPzv-0006Dk-JC; Sat, 09 May 2020 13:58:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPzr-0006Co-Dj
 for kexec@lists.infradead.org; Sat, 09 May 2020 13:58:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589032708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=nLUA8W5j+MyNDn2SryzaQKTx2p2PalluAUK/eJiFTvA=;
 b=CCTfK62/RAE3AXMP9kLcXUCSRfv5oPj191L4mGr7s1kys1GZiOdMmu0I9jGzPqg7FLQVRw
 duzka6KGfGT+pbaSC9tGtl9U3WYqCFBzy2yh6MLQ0r42ahLiacQuRjHqbNNOIdZHf/gY/H
 irSqBD16HEtqr8/3QHiO+wWAsoWjFaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-CZHajXDuMram0ED9XXXl7g-1; Sat, 09 May 2020 09:58:24 -0400
X-MC-Unique: CZHajXDuMram0ED9XXXl7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE53D39341;
 Sat,  9 May 2020 13:58:17 +0000 (UTC)
Received: from optiplex-lnx.redhat.com (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 403855D97B;
 Sat,  9 May 2020 13:57:40 +0000 (UTC)
From: Rafael Aquini <aquini@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3] kernel: add panic_on_taint
Date: Sat,  9 May 2020 09:57:37 -0400
Message-Id: <20200509135737.622299-1-aquini@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_065831_540015_25F40D20 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Analogously to the introduction of panic_on_warn, this patch
introduces a kernel option named panic_on_taint in order to
provide a simple and generic way to stop execution and catch
a coredump when the kernel gets tainted by any given taint flag.

This is useful for debugging sessions as it avoids rebuilding
the kernel to explicitly add calls to panic() or BUG() into
code sites that introduce the taint flags of interest.
Another, perhaps less frequent, use for this option would be
as a mean for assuring a security policy (in paranoid mode)
case where no single taint is allowed for the running system.

Suggested-by: Qian Cai <cai@lca.pw>
Signed-off-by: Rafael Aquini <aquini@redhat.com>
---
Changelog:
* v2: get rid of unnecessary/misguided compiler hints		(Luis)
* v2: enhance documentation text for the new kernel parameter	(Randy)
* v3: drop sysctl interface, keep it only as a kernel parameter (Luis)

 Documentation/admin-guide/kdump/kdump.rst     | 10 +++++
 .../admin-guide/kernel-parameters.txt         | 15 +++++++
 include/linux/kernel.h                        |  2 +
 kernel/panic.c                                | 40 +++++++++++++++++++
 kernel/sysctl.c                               |  9 ++++-
 5 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kdump/kdump.rst b/Documentation/admin-guide/kdump/kdump.rst
index ac7e131d2935..de3cf6d377cc 100644
--- a/Documentation/admin-guide/kdump/kdump.rst
+++ b/Documentation/admin-guide/kdump/kdump.rst
@@ -521,6 +521,16 @@ will cause a kdump to occur at the panic() call.  In cases where a user wants
 to specify this during runtime, /proc/sys/kernel/panic_on_warn can be set to 1
 to achieve the same behaviour.
 
+Trigger Kdump on add_taint()
+============================
+
+The kernel parameter, panic_on_taint, calls panic() from within add_taint(),
+whenever the value set in this bitmask matches with the bit flag being set
+by add_taint(). This will cause a kdump to occur at the panic() call.
+In cases where a user wants to specify this during runtime,
+/proc/sys/kernel/panic_on_taint can be set to a respective bitmask value
+to achieve the same behaviour.
+
 Contact
 =======
 
diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 7bc83f3d9bdf..4a69fe49a70d 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3404,6 +3404,21 @@
 	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
 			on a WARN().
 
+	panic_on_taint=	[KNL] conditionally panic() in add_taint()
+			Format: <str>
+			Specifies, as a string, the TAINT flag set that will
+			compose a bitmask for calling panic() when the kernel
+			gets tainted.
+			See Documentation/admin-guide/tainted-kernels.rst for
+			details on the taint flags that users can pick to
+			compose the bitmask to assign to panic_on_taint.
+			When the string is prefixed with a '-' the bitmask
+			set in panic_on_taint will be mutually exclusive
+			with the sysctl knob kernel.tainted, and any attempt
+			to write to that sysctl will fail with -EINVAL for
+			any taint value that masks with the flags set for
+			this option.
+
 	crash_kexec_post_notifiers
 			Run kdump after running panic-notifiers and dumping
 			kmsg. This only for the users who doubt kdump always
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 9b7a8d74a9d6..66bc102cb59a 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -528,6 +528,8 @@ extern int panic_on_oops;
 extern int panic_on_unrecovered_nmi;
 extern int panic_on_io_nmi;
 extern int panic_on_warn;
+extern unsigned long panic_on_taint;
+extern bool panic_on_taint_exclusive;
 extern int sysctl_panic_on_rcu_stall;
 extern int sysctl_panic_on_stackoverflow;
 
diff --git a/kernel/panic.c b/kernel/panic.c
index b69ee9e76cb2..65c62f8a1de8 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -25,6 +25,7 @@
 #include <linux/kexec.h>
 #include <linux/sched.h>
 #include <linux/sysrq.h>
+#include <linux/ctype.h>
 #include <linux/init.h>
 #include <linux/nmi.h>
 #include <linux/console.h>
@@ -44,6 +45,8 @@ static int pause_on_oops_flag;
 static DEFINE_SPINLOCK(pause_on_oops_lock);
 bool crash_kexec_post_notifiers;
 int panic_on_warn __read_mostly;
+unsigned long panic_on_taint;
+bool panic_on_taint_exclusive = false;
 
 int panic_timeout = CONFIG_PANIC_TIMEOUT;
 EXPORT_SYMBOL_GPL(panic_timeout);
@@ -434,6 +437,11 @@ void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
 		pr_warn("Disabling lock debugging due to kernel taint\n");
 
 	set_bit(flag, &tainted_mask);
+
+	if (tainted_mask & panic_on_taint) {
+		panic_on_taint = 0;
+		panic("panic_on_taint set ...");
+	}
 }
 EXPORT_SYMBOL(add_taint);
 
@@ -686,3 +694,35 @@ static int __init oops_setup(char *s)
 	return 0;
 }
 early_param("oops", oops_setup);
+
+static int __init panic_on_taint_setup(char *s)
+{
+	/* we just ignore panic_on_taint if passed without flags */
+	if (!s)
+		goto out;
+
+	for (; *s; s++) {
+		int i;
+
+		if (*s == '-') {
+			panic_on_taint_exclusive = true;
+			continue;
+		}
+
+		for (i = 0; i < TAINT_FLAGS_COUNT; i++) {
+			if (toupper(*s) == taint_flags[i].c_true) {
+				set_bit(i, &panic_on_taint);
+				break;
+			}
+		}
+	}
+
+	/* unset exclusive mode if no taint flags were passed on */
+	if (panic_on_taint_exclusive &&
+	    !(panic_on_taint & ((1UL << TAINT_FLAGS_COUNT) - 1)))
+		panic_on_taint_exclusive = false;
+
+out:
+	return 0;
+}
+early_param("panic_on_taint", panic_on_taint_setup);
diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 8a176d8727a3..d361ec0420f6 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -2623,11 +2623,18 @@ static int proc_taint(struct ctl_table *table, int write,
 		return err;
 
 	if (write) {
+		int i;
+		/*
+		 * If we are relying on panic_on_taint not producing
+		 * false positives due to userland input, bail out
+		 * before setting the requested taint flags.
+		 */
+		if (panic_on_taint_exclusive && (tmptaint & panic_on_taint))
+			return -EINVAL;
 		/*
 		 * Poor man's atomic or. Not worth adding a primitive
 		 * to everyone's atomic.h for this
 		 */
-		int i;
 		for (i = 0; i < BITS_PER_LONG && tmptaint >> i; i++) {
 			if ((tmptaint >> i) & 1)
 				add_taint(i, LOCKDEP_STILL_OK);
-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
