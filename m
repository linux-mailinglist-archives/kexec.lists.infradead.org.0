Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0390722BF6
	for <lists+kexec@lfdr.de>; Mon, 20 May 2019 08:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yu5K1ImlDpX+mqjShPWwleS9BPgd9sLjB23l7E+WFHw=; b=qeK5etDF0HcfXI
	WFAXL378ap4h+t+e/4Corud45F01svbPmWzDhYe6e5bw4S58mo82oGBaw0rRsKDsy1G7e+TssWLfV
	zszkmZXc77cI1zBkp0Gf7MmH+yoth49gJMpyHmkW/AwCHuUS42KeFhC//2eWOGehnjmT3y29m1AjL
	ifd5TVtHb+9bS5ihkiBId6dsEDXMu+fyunDsu32QI3wtO+MX/z+TgQUDl5KCYJlMz+EuIIwqa4oa1
	xlHEcKjz2jAkEcD2YCuapt2MuVjfNAm6iBmg9D7at+Z6RkizaGCjGfg6Rfmd2a/SMz4qf5iOCqOB9
	DIpQ38ax9z/5ODmV8rVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbeR-0000q1-1U; Mon, 20 May 2019 06:19:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbeN-0000p2-EA
 for kexec@lists.infradead.org; Mon, 20 May 2019 06:19:57 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B44DE307D855;
 Mon, 20 May 2019 06:19:51 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-171.pek2.redhat.com
 [10.72.3.171])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 191E819C68;
 Mon, 20 May 2019 06:19:45 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] vmcore: Add a kernel cmdline vmcore_device_dump
Date: Mon, 20 May 2019 14:18:34 +0800
Message-Id: <20190520061834.32231-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 20 May 2019 06:19:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_231955_513144_BF2391FA 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: Kairui Song <kasong@redhat.com>, Bhupesh Sharma <bhsharma@redhat.com>,
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

Since commit 2724273e8fd0 ('vmcore: add API to collect hardware dump in
second kernel'), drivers is allowed to add device related dump data to
vmcore as they want by using the device dump API. This have a potential
issue, the data is stored in memory, drivers may append too much data
and use too much memory. The vmcore is typically used in a kdump kernel
which runs in a pre-reserved small chunk of memory. So as a result it
will make kdump unusable at all due to OOM issues.

So introduce new vmcore_device_dump= kernel parameter, and disable
device dump by default. User can enable it only if device dump data is
required for debugging, and have the chance to increase the kdump
reserved memory accordingly before device dump fails kdump.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 Update from V1:
  - Use bool parameter to turn it on/off instead of letting user give
    the size limit. Size of device dump is hard to determine.

 Documentation/admin-guide/kernel-parameters.txt | 15 +++++++++++++++
 fs/proc/vmcore.c                                | 13 +++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 43176340c73d..2d48e39fd080 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -5062,6 +5062,21 @@
 			decrease the size and leave more room for directly
 			mapped kernel RAM.
 
+	vmcore_device_dump=
+			[VMCORE]
+			Format: {"off" | "on"}
+			If CONFIG_PROC_VMCORE_DEVICE_DUMP is set,
+			this parameter allows enable or disable device dump
+			for vmcore.
+			Device dump allows drivers to append dump data to
+			vmcore so you can collect driver specified debug info.
+			Note that the drivers could append the data without
+			any limit, and the data is stored in memory, this may
+			bring a significant memory stress. If you want to turn
+			on this option, make sure you have reserved enough memory
+			with crashkernel= parameter.
+			default: off
+
 	vmcp_cma=nn[MG]	[KNL,S390]
 			Sets the memory size reserved for contiguous memory
 			allocations for the vmcp device driver.
diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
index 3fe90443c1bb..d1b608b0efad 100644
--- a/fs/proc/vmcore.c
+++ b/fs/proc/vmcore.c
@@ -53,6 +53,8 @@ static struct proc_dir_entry *proc_vmcore;
 /* Device Dump list and mutex to synchronize access to list */
 static LIST_HEAD(vmcoredd_list);
 static DEFINE_MUTEX(vmcoredd_mutex);
+
+static bool vmcoredd_enabled;
 #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
 
 /* Device Dump Size */
@@ -1451,6 +1453,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
 	size_t data_size;
 	int ret;
 
+	if (!vmcoredd_enabled) {
+		pr_err_once("Device dump is disabled\n");
+		return -EINVAL;
+	}
+
 	if (!data || !strlen(data->dump_name) ||
 	    !data->vmcoredd_callback || !data->size)
 		return -EINVAL;
@@ -1502,6 +1509,12 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
 	return ret;
 }
 EXPORT_SYMBOL(vmcore_add_device_dump);
+
+static int __init vmcoredd_parse_cmdline(char *arg)
+{
+	return kstrtobool(arg, &vmcoredd_enabled);
+}
+__setup("vmcore_device_dump=", vmcoredd_parse_cmdline);
 #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
 
 /* Free all dumps in vmcore device dump list */
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
