Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429C61C1AF5
	for <lists+kexec@lfdr.de>; Fri,  1 May 2020 18:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JsS+47lDeL21u8VANiqFvrOj/dbzTSJ2iipbv/9l2RQ=; b=HLmq8jI8NelaUo
	C4hrOoQjgxrGPmKNKZVlDaRJNzjymbJ4cTyz+J2CR2kqVTo7fZQyDI9cGDCbDN8rB3l7vTP7HYeAX
	2p29Sy9W7BtcTFKfsWGfNNgODLljYgAJTu5aLWmty441DWMHDqAKqrXABMfclSzpuDMlzyU8UER5/
	auwJWTV3mM8mjw+TwmIyHt4rZGXFUU3zoap9ZZJLAPyoXA3XGbbZMI65R0L2KiwrSuNLCAetzBf/E
	vwK9tMJY5tTSV6NDKkBfHeL13+5k/3mcbff5F7Mhs+PH0Kqlg7XCyk3+TGN/MRP2SdnlpySAGvQHB
	A9tofaaMFoAtvhKnvbeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYz7-0003IC-1n; Fri, 01 May 2020 16:57:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYz4-0003Hn-Hs; Fri, 01 May 2020 16:57:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA28F30E;
 Fri,  1 May 2020 09:57:53 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0BAE3F305;
 Fri,  1 May 2020 09:57:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] kexec: Discard loaded image on memory hotplug
Date: Fri,  1 May 2020 17:57:01 +0100
Message-Id: <20200501165701.24587-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_095754_634917_BC5A776D 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Morse <james.morse@arm.com>, Dave Young <dyoung@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On x86, the kexec payload contains a copy of the current memory map.
If memory is added or removed, this copy of the memory map becomes
stale. Getting this wrong may prevent the next kernel from booting.
The first kernel may die if it tries to re-assemble the next kernel
in memory that has been removed.

Discard the loaded kexec image when the memory map changes, user-space
should reload it.

Kdump is unaffected, as it is placed within the crashkernel reserved
memory area and only uses this memory. The stale memory map may affect
generation of the vmcore, but the kdump kernel should be in a position
to validate it.

Signed-off-by: James Morse <james.morse@arm.com>
---
This patch obsoletes:
 * kexec/memory_hotplug: Prevent removal and accidental use
https://lore.kernel.org/linux-arm-kernel/20200326180730.4754-1-james.morse@arm.com/

 kernel/kexec_core.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index c19c0dad1ebe..e1901e5bd4b5 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/fs.h>
 #include <linux/kexec.h>
+#include <linux/memory.h>
 #include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/highmem.h>
@@ -22,10 +23,12 @@
 #include <linux/elf.h>
 #include <linux/elfcore.h>
 #include <linux/utsname.h>
+#include <linux/notifier.h>
 #include <linux/numa.h>
 #include <linux/suspend.h>
 #include <linux/device.h>
 #include <linux/freezer.h>
+#include <linux/pfn.h>
 #include <linux/pm.h>
 #include <linux/cpu.h>
 #include <linux/uaccess.h>
@@ -1219,3 +1222,40 @@ void __weak arch_kexec_protect_crashkres(void)
 
 void __weak arch_kexec_unprotect_crashkres(void)
 {}
+
+/*
+ * If the memory layout changes, any loaded kexec image should be evicted
+ * as it may contain a copy of the (now stale) memory map. This also means
+ * we don't need to check the memory is still present when re-assembling the
+ * new kernel at machine_kexec() time.
+ */
+static int mem_change_cb(struct notifier_block *nb, unsigned long action,
+			 void *data)
+{
+	/*
+	 * Actions are either a change, or a change being cancelled.
+	 * A second discard for 'cancel's is harmless.
+	 */
+
+	mutex_lock(&kexec_mutex);
+	if (kexec_image) {
+		kimage_free(xchg(&kexec_image, NULL));
+		pr_warn("loaded image discarded due to memory hotplug");
+	}
+	mutex_unlock(&kexec_mutex);
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block mem_change_nb = {
+	.notifier_call = mem_change_cb,
+};
+
+static int __init register_mem_change_cb(void)
+{
+	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
+		return register_memory_notifier(&mem_change_nb);
+
+	return 0;
+}
+device_initcall(register_mem_change_cb);
-- 
2.26.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
