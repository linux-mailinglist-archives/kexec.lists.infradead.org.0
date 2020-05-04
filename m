Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D56F1C469C
	for <lists+kexec@lfdr.de>; Mon,  4 May 2020 21:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p98ab21nuCBfCGIiK7HwyIlUlfYQw8EPPBcZV7dIwqE=; b=IFpbXjAbUdQSAA
	LCO3bMfnF7Vp9J28tDeGNkmliHowR+Gl1TDA5m2f/BMsCYQ1+8eBQnw+jJQmI6a1P7rBPArk40omH
	V9LE8ZN4xSHNStfdXdB5xFRUCudeiwI6o39ALIeiy080hQNzocx+DbGN3T38XYKqyFtMg7Nfo5a0O
	FqapFrMrs2IU/LjAdJh/p1iEkeaFj5QkA4MwCai20VnIu/Cz+PMDG+DWuLiB3+hZGIAB4P9rt5hMj
	fW9Qm2JNPI5Cs8ywhatx9No7VEnPaBU3Un3qXR/zeLcnZ/5ir/ugRgcLoBy3oDNK0jhWUsBJE2fLH
	IugEthqgoQy2FGgReS5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgMv-0000ME-P9; Mon, 04 May 2020 19:03:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgMq-0000FN-AZ
 for kexec@lists.infradead.org; Mon, 04 May 2020 19:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588618983;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LnHTyg8VhS7UwK7+YtYdl8Nx9ZbZlJd/OJWiKRZNwDo=;
 b=eQKS+tA+/HFGlmZ4OqcEfTEVIZcpI8ex9G6Q0YhDrwD7UHi7kZ+WVoysY2vKFiyCCXCYd8
 QzYFDLCeE5Is7mJmedECpx7NGXcGsGfmhPn37yddBIJHb/MzX651LmzuXfbQ0KA53vqZTn
 08xozG6sprrzQ/DOBQcb3FYaUXyOYEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-zszvihSwO6K7Ykp-GmZ0tg-1; Mon, 04 May 2020 15:03:01 -0400
X-MC-Unique: zszvihSwO6K7Ykp-GmZ0tg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 459E51840400;
 Mon,  4 May 2020 19:02:59 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-114-235.ams2.redhat.com [10.36.114.235])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 03D522B4AF;
 Mon,  4 May 2020 19:02:55 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] device-dax: Add memory via add_memory_driver_managed()
Date: Mon,  4 May 2020 21:02:27 +0200
Message-Id: <20200504190227.18269-4-david@redhat.com>
In-Reply-To: <20200504190227.18269-1-david@redhat.com>
References: <20200504190227.18269-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120304_446587_487F7071 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/dax/kmem.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/dax/kmem.c b/drivers/dax/kmem.c
index 3d0a7e702c94..5a645a24e359 100644
--- a/drivers/dax/kmem.c
+++ b/drivers/dax/kmem.c
@@ -65,7 +65,13 @@ int dev_dax_kmem_probe(struct device *dev)
 	new_res->flags = IORESOURCE_SYSTEM_RAM;
 	new_res->name = dev_name(dev);
 
-	rc = add_memory(numa_node, new_res->start, resource_size(new_res));
+	/*
+	 * Ensure that future kexec'd kernels will not treat this as RAM
+	 * automatically.
+	 */
+	rc = add_memory_driver_managed(numa_node, new_res->start,
+				       resource_size(new_res),
+				       "System RAM (kmem)");
 	if (rc) {
 		release_resource(new_res);
 		kfree(new_res);
-- 
2.25.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
