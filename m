Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228E219BBC
	for <lists+kexec@lfdr.de>; Fri, 10 May 2019 12:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LXr7tn9Gj2O4o59tcSdW8j1XZKTPxxCNYXxFvk2QsWU=; b=IA04yHrOVA4Tx3
	X8PTiv5uUgIbN3OW+qkO7RK2BiurEOdIxgQuQEF4UjKkG/bgMVYMhRcg/zB9OlEqa1CEV0540zgQu
	Gf0qFK3LrMLMzuexFnT67Pa4sHc9Eqh8+ls+SpGqVxRsr7zoA4f1QUkvUBZSqK+g2lEWACfON0x+L
	97wIhX9Lj5uxW+Xtmg+I1WvJd/0ENShcTT4jptTNAS+sqJkGsk1OBRHrtLqpTkXbXYi2zkDWkWdjk
	IOoBs/q9F69PEqZcTkJmVJ3q7OadPMI6gEoxISXBtsdqelaYjvA8wDHhfjm9P5qtc6Q63ymnKSGd6
	hChRP4tWb+UfYsmO15SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2s1-0007ew-Gv; Fri, 10 May 2019 10:35:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2ru-0007dQ-DZ
 for kexec@lists.infradead.org; Fri, 10 May 2019 10:35:11 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3467A85376;
 Fri, 10 May 2019 10:35:09 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-190.pek2.redhat.com
 [10.72.3.190])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E547600C7;
 Fri, 10 May 2019 10:35:03 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH] vmcore: Add a kernel cmdline device_dump_limit
Date: Fri, 10 May 2019 18:20:51 +0800
Message-Id: <20190510102051.25647-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 10 May 2019 10:35:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_033510_481427_A66CD15C 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: Kairui Song <kasong@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "David S . Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, Ganesh Goudar <ganeshgr@chelsio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Device dump allow drivers to add device related dump data to vmcore as
they want. This have a potential issue, the data is stored in memory,
drivers may append too much data and use too much memory. The vmcore is
typically used in a kdump kernel which runs in a pre-reserved small
chunk of memory. So as a result it will make kdump unusable at all due
to OOM issues.

So introduce new device_dump_limit= kernel parameter, and set the
default limit to 0, so device dump is not enabled unless user specify
the accetable maxiam memory usage for device dump data. In this way user
will also have the chance to adjust the kdump reserved memory
accordingly.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 fs/proc/vmcore.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
index 3fe90443c1bb..e28695ef2439 100644
--- a/fs/proc/vmcore.c
+++ b/fs/proc/vmcore.c
@@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
 /* Device Dump list and mutex to synchronize access to list */
 static LIST_HEAD(vmcoredd_list);
 static DEFINE_MUTEX(vmcoredd_mutex);
+
+/* Device Dump Limit */
+static size_t vmcoredd_limit;
 #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
 
 /* Device Dump Size */
@@ -1465,6 +1468,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
 	data_size = roundup(sizeof(struct vmcoredd_header) + data->size,
 			    PAGE_SIZE);
 
+	if (vmcoredd_orig_sz + data_size >= vmcoredd_limit) {
+		ret = -ENOMEM;
+		goto out_err;
+	}
+
 	/* Allocate buffer for driver's to write their dumps */
 	buf = vmcore_alloc_buf(data_size);
 	if (!buf) {
@@ -1502,6 +1510,18 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
 	return ret;
 }
 EXPORT_SYMBOL(vmcore_add_device_dump);
+
+static int __init parse_vmcoredd_limit(char *arg)
+{
+	char *end;
+
+	if (!arg)
+		return -EINVAL;
+	vmcoredd_limit = memparse(arg, &end);
+	return end > arg ? 0 : -EINVAL;
+
+}
+__setup("device_dump_limit=", parse_vmcoredd_limit);
 #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
 
 /* Free all dumps in vmcore device dump list */
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
