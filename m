Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C08C1C7D5F
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 00:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fOaqV5GHwVx0KMSUzGLdJI63aSAYaDL8MaHcg/a+D7M=; b=hSAaFpTWhlOiTW
	bOk4wT1Sm9z+f7HXXweJApzZaQ3i7ZGCAEi5MGHS+rtLfyuvdOJB5a33wvXatuXd7aJPbgrq7hifC
	hcqs/MHLqNkwfDDUI3+xC21eDMktnDVKIk9uviAe+opfWSw+SINYPDSUlCbqFxUBBs8CNUwmvDlC5
	gEsm7p5qCUdK4z8/KmGnaehzvJy39XReygoy6gZBEBa0uUKUElA7JTDxxexAv5w3dUHk1siEh51uV
	8EtlZBTU8bN+ECPeTGB0ckShjlorgipEslPC2rNq9vG3PEJnv264t1ZC1F2Hp9rvIOMHgNthoGG4f
	HJ+TTy+J5u18fWlAcuKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWSXp-0002RC-2j; Wed, 06 May 2020 22:29:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWSXj-0002Qq-IL
 for kexec@bombadil.infradead.org; Wed, 06 May 2020 22:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=wQTyzrrjxvEBxHFU1Nt/yiuwPloqRUZUg1732JX0QhY=; b=VPgrgQo51XqlNQQSSAD8vL7MI9
 mmVcmhXYOw+P+xc23XsqUVDnd1y5wxMcVkfKx9rVF3Naw5KHZlU0r9DRLlxrvrwzAn5FFjuoIFujz
 GAQiYQKMpLdFtDONOrD/UCvPqqOg/6+iXLVi+4J4dIswsxKpBzgA/A1Zat4qbF4gpapEf2qBPcQP8
 S1cy5Lbc3iSbsiLAnd8gMRkuT1rFsChvAdLCpGnvxkFJtal3jsnd6YLoc1fACjOizA7XYA1FiNlTE
 fxRwvhV2Nl1J4hzucFe04JPCtbIA6RbpX//TOWotaQz5BDWQngxKAlg8YjmJ5+gQff8DZCCrhuOxw
 5+JT2B8Q==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWSXg-0006oM-O5
 for kexec@lists.infradead.org; Wed, 06 May 2020 22:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588804117;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wQTyzrrjxvEBxHFU1Nt/yiuwPloqRUZUg1732JX0QhY=;
 b=ZbQRVa9yjykWNzZDyUyT/6i36HV2x95OPul1oy6RgtXvKD7g4Qzkt2Wm1R0shFZqZP12NH
 77kKcvQid1OjrZDypT6DwWfsieU5lcYzNW5QBZINcvTWPMIlw7CQZ4D/V2c6SaBdStKB6i
 DRTMtvIpGuyv7yLIjp0yNzxYGLnHY0o=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588804139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wQTyzrrjxvEBxHFU1Nt/yiuwPloqRUZUg1732JX0QhY=;
 b=fj+ycTQrvDam92NhfFHM5Px05fBHOJHm57NenjX1y9E2N313rXT5MR3Qgbeg5AswXfO7DC
 R2znVs+NQt/sRnMv1KiQrqRpzxgQyaApVN8w6oLIJ+biDGNhTBnN+5/pg2T3P+VtWuOOGB
 3/1wCN/zb2HeekHDZzX7LEOucy1x3kg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588804164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wQTyzrrjxvEBxHFU1Nt/yiuwPloqRUZUg1732JX0QhY=;
 b=DJZFq4WXFS1j1I6CGb9AVcpo+K+HeH0IQqt+abjtkgHnGO4lIQxsOXf9knwmV8pWoIbipd
 oYeu//z7e8X0jWMxys5fKPbKg47fRQ+iqpZgZ1DqkqtSMlO8jTKxyN0GZr+/7Qx64UPyEE
 9akYWPGKKuUrOgeAg3YvLP7I4JZdEng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-PVdTOSqROH68QaI3WS8alw-1; Wed, 06 May 2020 18:28:33 -0400
X-MC-Unique: PVdTOSqROH68QaI3WS8alw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9092856C8E;
 Wed,  6 May 2020 22:28:31 +0000 (UTC)
Received: from optiplex-lnx.redhat.com (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BB9A1001B07;
 Wed,  6 May 2020 22:28:25 +0000 (UTC)
From: Rafael Aquini <aquini@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] kernel: add panic_on_taint
Date: Wed,  6 May 2020 18:28:15 -0400
Message-Id: <20200506222815.274570-1-aquini@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: keescook@chromium.org, bhe@redhat.com, corbet@lwn.net,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org, mcgrof@kernel.org,
 cai@lca.pw, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 dyoung@redhat.com
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
 Documentation/admin-guide/kdump/kdump.rst     | 10 ++++++
 .../admin-guide/kernel-parameters.txt         |  3 ++
 Documentation/admin-guide/sysctl/kernel.rst   | 36 +++++++++++++++++++
 include/linux/kernel.h                        |  1 +
 kernel/panic.c                                |  7 ++++
 kernel/sysctl.c                               |  7 ++++
 6 files changed, 64 insertions(+)

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
index 7bc83f3d9bdf..75c02c1841b2 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3404,6 +3404,9 @@
 	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
 			on a WARN().
 
+	panic_on_taint	panic() when the kernel gets tainted, if the taint
+			flag being set matches with the assigned bitmask.
+
 	crash_kexec_post_notifiers
 			Run kdump after running panic-notifiers and dumping
 			kmsg. This only for the users who doubt kdump always
diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
index 0d427fd10941..5b880102f2e3 100644
--- a/Documentation/admin-guide/sysctl/kernel.rst
+++ b/Documentation/admin-guide/sysctl/kernel.rst
@@ -658,6 +658,42 @@ a kernel rebuild when attempting to kdump at the location of a WARN().
 = ================================================
 
 
+panic_on_taint
+==============
+
+Bitmask for calling panic() in the add_taint() path.
+This is useful to avoid a kernel rebuild when attempting to
+kdump at the insertion of any specific TAINT flags.
+When set to 0 (default) add_taint() default behavior is maintained.
+
+====== ============================
+bit  0 TAINT_PROPRIETARY_MODULE
+bit  1 TAINT_FORCED_MODULE
+bit  2 TAINT_CPU_OUT_OF_SPEC
+bit  3 TAINT_FORCED_RMMOD
+bit  4 TAINT_MACHINE_CHECK
+bit  5 TAINT_BAD_PAGE
+bit  6 TAINT_USER
+bit  7 TAINT_DIE
+bit  8 TAINT_OVERRIDDEN_ACPI_TABLE
+bit  9 TAINT_WARN
+bit 10 TAINT_CRAP
+bit 11 TAINT_FIRMWARE_WORKAROUND
+bit 12 TAINT_OOT_MODULE
+bit 13 TAINT_UNSIGNED_MODULE
+bit 14 TAINT_SOFTLOCKUP
+bit 15 TAINT_LIVEPATCH
+bit 16 TAINT_AUX
+bit 17 TAINT_RANDSTRUCT
+bit 18 TAINT_FLAGS_COUNT
+====== ============================
+
+So, for example, to panic if the kernel gets tainted due to
+occurrences of bad pages and/or machine check errors, a user can::
+
+  echo 48 > /proc/sys/kernel/panic_on_taint
+
+
 panic_print
 ===========
 
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 9b7a8d74a9d6..518b9fd381c2 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -528,6 +528,7 @@ extern int panic_on_oops;
 extern int panic_on_unrecovered_nmi;
 extern int panic_on_io_nmi;
 extern int panic_on_warn;
+extern unsigned long panic_on_taint;
 extern int sysctl_panic_on_rcu_stall;
 extern int sysctl_panic_on_stackoverflow;
 
diff --git a/kernel/panic.c b/kernel/panic.c
index b69ee9e76cb2..e2d4771ab911 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -44,6 +44,7 @@ static int pause_on_oops_flag;
 static DEFINE_SPINLOCK(pause_on_oops_lock);
 bool crash_kexec_post_notifiers;
 int panic_on_warn __read_mostly;
+unsigned long panic_on_taint __read_mostly;
 
 int panic_timeout = CONFIG_PANIC_TIMEOUT;
 EXPORT_SYMBOL_GPL(panic_timeout);
@@ -434,6 +435,11 @@ void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
 		pr_warn("Disabling lock debugging due to kernel taint\n");
 
 	set_bit(flag, &tainted_mask);
+
+	if (unlikely(tainted_mask & panic_on_taint)) {
+		panic_on_taint = 0;
+		panic("panic_on_taint set ...");
+	}
 }
 EXPORT_SYMBOL(add_taint);
 
@@ -675,6 +681,7 @@ core_param(panic, panic_timeout, int, 0644);
 core_param(panic_print, panic_print, ulong, 0644);
 core_param(pause_on_oops, pause_on_oops, int, 0644);
 core_param(panic_on_warn, panic_on_warn, int, 0644);
+core_param(panic_on_taint, panic_on_taint, ulong, 0644);
 core_param(crash_kexec_post_notifiers, crash_kexec_post_notifiers, bool, 0644);
 
 static int __init oops_setup(char *s)
diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 8a176d8727a3..b80ab660d727 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
 		.extra1		= SYSCTL_ZERO,
 		.extra2		= SYSCTL_ONE,
 	},
+	{
+		.procname	= "panic_on_taint",
+		.data		= &panic_on_taint,
+		.maxlen		= sizeof(unsigned long),
+		.mode		= 0644,
+		.proc_handler	= proc_doulongvec_minmax,
+	},
 #if defined(CONFIG_SMP) && defined(CONFIG_NO_HZ_COMMON)
 	{
 		.procname	= "timer_migration",
-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
