Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065211CA659
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 10:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbqvLcANEFZS/kxTl+pQmF1JyNIaE2mxDMHoSCxYfQI=; b=JgB7KE+ys3O1mb
	3FROYwOOxAMXjuYMOs+q69TRtuNdqsJd//rvHwhnBgedBODK9sSHwGabqnTfFjy61rI9OYRXFDuVn
	G07N33TE5TFi/rgWMAdL2IbMlsUqdocI8XNGD2Q0vz3eCA8eFrMi1rgSSg89p0+wE/Ld5GxOsBFqj
	ooCGEMR05nYdo5ja5r+4MWNpLsv3rNq/8pK9iDu/6z2SsEqvYfEMUXlCFr/qh0GsO1m8Lcm77uxL+
	s247KYDzD7TxAp9Vkqp51dDR4UO5FR5dYDQ05u+90Rph8B1Xlw8s8rkstKkT6qml2g6WjREQaSA0/
	ezuRKR6NKc/SiT25YNRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyat-0004ej-Nv; Fri, 08 May 2020 08:42:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyan-0004Xp-Cm
 for kexec@lists.infradead.org; Fri, 08 May 2020 08:42:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927367;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f6TeMrGs7xjeCj9G607qVf2e66dWDywj8Qub6sAiaWA=;
 b=hwyyqTdT3+OT8Vt/zwBsVdkwjZnxggrmy0FumX1khr2GJnMAlOoPmuW2UpsqUHUWquaWju
 bZqIxpz9ROz0UMJe3OQkXfDDiPm2c4gNmafwOdkh6GEwwZ9iVGupVpUX+VNzTZkfyTe9Qk
 8LCToU4sVOUPVRv9j73zfcpMrzOvCaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-e2MKSisaOFSWnPAgNcUing-1; Fri, 08 May 2020 04:42:43 -0400
X-MC-Unique: e2MKSisaOFSWnPAgNcUing-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C966107ACCA;
 Fri,  8 May 2020 08:42:41 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-113-181.ams2.redhat.com [10.36.113.181])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 54D1C5C1C5;
 Fri,  8 May 2020 08:42:38 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] device-dax: Add memory via add_memory_driver_managed()
Date: Fri,  8 May 2020 10:42:17 +0200
Message-Id: <20200508084217.9160-5-david@redhat.com>
In-Reply-To: <20200508084217.9160-1-david@redhat.com>
References: <20200508084217.9160-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014249_511194_B5D57B37 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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
Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>, Michal Hocko <mhocko@suse.com>,
 Dave Jiang <dave.jiang@intel.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Baoquan He <bhe@redhat.com>, linux-nvdimm@lists.01.org,
 Vishal Verma <vishal.l.verma@intel.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Currently, when adding memory, we create entries in /sys/firmware/memmap/
as "System RAM". This will lead to kexec-tools to add that memory to the
fixed-up initial memmap for a kexec kernel (loaded via kexec_load()). The
memory will be considered initial System RAM by the kexec'd kernel and
can no longer be reconfigured. This is not what happens during a real
reboot.

Let's add our memory via add_memory_driver_managed() now, so we won't
create entries in /sys/firmware/memmap/ and indicate the memory as
"System RAM (kmem)" in /proc/iomem. This allows everybody (especially
kexec-tools) to identify that this memory is special and has to be treated
differently than ordinary (hotplugged) System RAM.

Before configuring the namespace:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-33fffffff : namespace0.0
	3280000000-32ffffffff : PCI Bus 0000:00

After configuring the namespace:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  148200000-33fffffff : dax0.0
	3280000000-32ffffffff : PCI Bus 0000:00

After loading kmem before this change:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  150000000-33fffffff : dax0.0
	    150000000-33fffffff : System RAM
	3280000000-32ffffffff : PCI Bus 0000:00

After loading kmem after this change:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  150000000-33fffffff : dax0.0
	    150000000-33fffffff : System RAM (kmem)
	3280000000-32ffffffff : PCI Bus 0000:00

After a proper reboot:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  148200000-33fffffff : dax0.0
	3280000000-32ffffffff : PCI Bus 0000:00

Within the kexec kernel before this change:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  150000000-33fffffff : System RAM
	3280000000-32ffffffff : PCI Bus 0000:00

Within the kexec kernel after this change:
	[root@localhost ~]# cat /proc/iomem
	...
	140000000-33fffffff : Persistent Memory
	  140000000-1481fffff : namespace0.0
	  148200000-33fffffff : dax0.0
	3280000000-32ffffffff : PCI Bus 0000:00

/sys/firmware/memmap/ before this change:
	0000000000000000-000000000009fc00 (System RAM)
	000000000009fc00-00000000000a0000 (Reserved)
	00000000000f0000-0000000000100000 (Reserved)
	0000000000100000-00000000bffdf000 (System RAM)
	00000000bffdf000-00000000c0000000 (Reserved)
	00000000feffc000-00000000ff000000 (Reserved)
	00000000fffc0000-0000000100000000 (Reserved)
	0000000100000000-0000000140000000 (System RAM)
	0000000150000000-0000000340000000 (System RAM)

/sys/firmware/memmap/ after a proper reboot:
	0000000000000000-000000000009fc00 (System RAM)
	000000000009fc00-00000000000a0000 (Reserved)
	00000000000f0000-0000000000100000 (Reserved)
	0000000000100000-00000000bffdf000 (System RAM)
	00000000bffdf000-00000000c0000000 (Reserved)
	00000000feffc000-00000000ff000000 (Reserved)
	00000000fffc0000-0000000100000000 (Reserved)
	0000000100000000-0000000140000000 (System RAM)

/sys/firmware/memmap/ after this change:
	0000000000000000-000000000009fc00 (System RAM)
	000000000009fc00-00000000000a0000 (Reserved)
	00000000000f0000-0000000000100000 (Reserved)
	0000000000100000-00000000bffdf000 (System RAM)
	00000000bffdf000-00000000c0000000 (Reserved)
	00000000feffc000-00000000ff000000 (Reserved)
	00000000fffc0000-0000000100000000 (Reserved)
	0000000100000000-0000000140000000 (System RAM)

kexec-tools already seem to basically ignore any System RAM that's not
on top level when searching for areas to place kexec images - but also
for determining crash areas to dump via kdump. Changing the resource name
won't have an impact.

Handle unloading of the driver after memory hotremove failed properly, by
duplicating the string if necessary.

Acked-by: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Cc: Wei Yang <richard.weiyang@gmail.com>
Cc: Baoquan He <bhe@redhat.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Eric Biederman <ebiederm@xmission.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/dax/dax-private.h |  1 +
 drivers/dax/kmem.c        | 28 ++++++++++++++++++++++++++--
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/dax/dax-private.h b/drivers/dax/dax-private.h
index 3107ce80e809..16850d5388ab 100644
--- a/drivers/dax/dax-private.h
+++ b/drivers/dax/dax-private.h
@@ -44,6 +44,7 @@ struct dax_region {
  * @dev - device core
  * @pgmap - pgmap for memmap setup / lifetime (driver owned)
  * @dax_mem_res: physical address range of hotadded DAX memory
+ * @dax_mem_name: name for hotadded DAX memory via add_memory_driver_managed()
  */
 struct dev_dax {
 	struct dax_region *region;
diff --git a/drivers/dax/kmem.c b/drivers/dax/kmem.c
index 1e678bdf5aed..275aa5f87399 100644
--- a/drivers/dax/kmem.c
+++ b/drivers/dax/kmem.c
@@ -14,6 +14,11 @@
 #include "dax-private.h"
 #include "bus.h"
 
+/* Memory resource name used for add_memory_driver_managed(). */
+static const char *kmem_name;
+/* Set if any memory will remain added when the driver will be unloaded. */
+static bool any_hotremove_failed;
+
 int dev_dax_kmem_probe(struct device *dev)
 {
 	struct dev_dax *dev_dax = to_dev_dax(dev);
@@ -70,7 +75,12 @@ int dev_dax_kmem_probe(struct device *dev)
 	 */
 	new_res->flags = IORESOURCE_SYSTEM_RAM;
 
-	rc = add_memory(numa_node, new_res->start, resource_size(new_res));
+	/*
+	 * Ensure that future kexec'd kernels will not treat this as RAM
+	 * automatically.
+	 */
+	rc = add_memory_driver_managed(numa_node, new_res->start,
+				       resource_size(new_res), kmem_name);
 	if (rc) {
 		release_resource(new_res);
 		kfree(new_res);
@@ -100,6 +110,7 @@ static int dev_dax_kmem_remove(struct device *dev)
 	 */
 	rc = remove_memory(dev_dax->target_node, kmem_start, kmem_size);
 	if (rc) {
+		any_hotremove_failed = true;
 		dev_err(dev,
 			"DAX region %pR cannot be hotremoved until the next reboot\n",
 			res);
@@ -124,6 +135,7 @@ static int dev_dax_kmem_remove(struct device *dev)
 	 * permanently pinned as reserved by the unreleased
 	 * request_mem_region().
 	 */
+	any_hotremove_failed = true;
 	return 0;
 }
 #endif /* CONFIG_MEMORY_HOTREMOVE */
@@ -137,12 +149,24 @@ static struct dax_device_driver device_dax_kmem_driver = {
 
 static int __init dax_kmem_init(void)
 {
-	return dax_driver_register(&device_dax_kmem_driver);
+	int rc;
+
+	/* Resource name is permanently allocated if any hotremove fails. */
+	kmem_name = kstrdup_const("System RAM (kmem)", GFP_KERNEL);
+	if (!kmem_name)
+		return -ENOMEM;
+
+	rc = dax_driver_register(&device_dax_kmem_driver);
+	if (rc)
+		kfree_const(kmem_name);
+	return rc;
 }
 
 static void __exit dax_kmem_exit(void)
 {
 	dax_driver_unregister(&device_dax_kmem_driver);
+	if (!any_hotremove_failed)
+		kfree_const(kmem_name);
 }
 
 MODULE_AUTHOR("Intel Corporation");
-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
