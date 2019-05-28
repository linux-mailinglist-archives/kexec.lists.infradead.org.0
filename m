Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A2F2C554
	for <lists+kexec@lfdr.de>; Tue, 28 May 2019 13:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fagiZRxqgsC3Dv9Ry/bW61AvbOfcxbhpOB23F81Y+jE=; b=QBRTa6thKTX0X3
	tQUOWRILnVxhq6tpKSvMHD3tEvenJn+DWvZltjTnGyEDZ8GixxplgUIS1lGTVZpLbIh03/orAbdXo
	OCkPErbYVoCul/MC1weg9H9FYot526d+WT8f5JD0483vDUxSYd+rBvA7+OerFSkNjmjXclkiZdV9A
	Gx2ziDcLe9z2vN8hG6XubhgGCIqeNcqP6G7h7Y/2JFe2Fnv2euz5C5a+Gsd+Yn+9i2rA7u+bOB7aw
	4PovpbkHGL1B9PoVDRkdbdlBQt27UwNwhIfxVhnih1sM07a15d5b7sXMT9Zm95k0AueCWL8WIslBy
	vWkMSnq5Egcyg8ji4xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaBy-0001U6-3g; Tue, 28 May 2019 11:22:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaBv-0001Ti-65
 for kexec@lists.infradead.org; Tue, 28 May 2019 11:22:52 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6471B81126;
 Tue, 28 May 2019 11:22:40 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-154.pek2.redhat.com
 [10.72.3.154])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 980967C0B4;
 Tue, 28 May 2019 11:22:32 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4] vmcore: Add a kernel parameter novmcoredd
Date: Tue, 28 May 2019 19:18:56 +0800
Message-Id: <20190528111856.7276-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 28 May 2019 11:22:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_042251_263048_17EFC063 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Kairui Song <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "David S . Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Since commit 2724273e8fd0 ("vmcore: add API to collect hardware dump in
second kernel"), drivers is allowed to add device related dump data to
vmcore as they want by using the device dump API. This have a potential
issue, the data is stored in memory, drivers may append too much data
and use too much memory. The vmcore is typically used in a kdump kernel
which runs in a pre-reserved small chunk of memory. So as a result it
will make kdump unusable at all due to OOM issues.

So introduce new 'novmcoredd' command line option. User can disable
device dump to reduce memory usage. This is helpful if device dump is
using too much memory, disabling device dump could make sure a regular
vmcore without device dump data is still available.

Signed-off-by: Kairui Song <kasong@redhat.com>

---
 Update from V3:
  - Use novmcoredd instead of vmcore_device_dump. Use
    vmcore_device_dump and make it off by default is confusing,
    novmcoredd is a cleaner way to let user space be able to disable
    device dump to save memory.

 Update from V2:
  - Improve related docs

 Update from V1:
  - Use bool parameter to turn it on/off instead of letting user give
    the size limit. Size of device dump is hard to determine.

 Documentation/admin-guide/kernel-parameters.txt | 11 +++++++++++
 fs/proc/Kconfig                                 |  3 ++-
 fs/proc/vmcore.c                                |  8 ++++++++
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 138f6664b2e2..1b900d262680 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2872,6 +2872,17 @@
 			/sys/module/printk/parameters/console_suspend) to
 			turn on/off it dynamically.
 
+	novmcoredd	[KNL,KDUMP]
+			Disable device dump. Device dump allows drivers to
+			append dump data to vmcore so you can collect driver
+			specified debug info. The drivers could append the
+			data without any limit, and the data is stored in
+			memory, this may bring a significant memory stress.
+			Disable device dump can help save memory but driver
+			debug data will be no longer available.
+			Only available when CONFIG_PROC_VMCORE_DEVICE_DUMP
+			is set.
+
 	noaliencache	[MM, NUMA, SLAB] Disables the allocation of alien
 			caches in the slab allocator.  Saves per-node memory,
 			but will impact performance.
diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
index 817c02b13b1d..62b19162d198 100644
--- a/fs/proc/Kconfig
+++ b/fs/proc/Kconfig
@@ -57,7 +57,8 @@ config PROC_VMCORE_DEVICE_DUMP
 	  snapshot.
 
 	  If you say Y here, the collected device dumps will be added
-	  as ELF notes to /proc/vmcore.
+	  as ELF notes to /proc/vmcore. You can still disabled device
+	  dump by command line option 'novmcoredd'.
 
 config PROC_SYSCTL
 	bool "Sysctl support (/proc/sys)" if EXPERT
diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
index 3fe90443c1bb..e815fd035fc0 100644
--- a/fs/proc/vmcore.c
+++ b/fs/proc/vmcore.c
@@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
 /* Device Dump list and mutex to synchronize access to list */
 static LIST_HEAD(vmcoredd_list);
 static DEFINE_MUTEX(vmcoredd_mutex);
+
+static bool vmcoredd_disabled;
+core_param(novmcoredd, vmcoredd_disabled, bool, 0);
 #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
 
 /* Device Dump Size */
@@ -1451,6 +1454,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
 	size_t data_size;
 	int ret;
 
+	if (vmcoredd_disabled) {
+		pr_err_once("Device dump is disabled\n");
+		return -EINVAL;
+	}
+
 	if (!data || !strlen(data->dump_name) ||
 	    !data->vmcoredd_callback || !data->size)
 		return -EINVAL;
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
