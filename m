Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89FB1CA658
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 10:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UCihTLs6dMw+/Cj1khZ02zrmnmJZXMtdDtVOq6qCpc=; b=drP4XsmTijddfg
	AZ1hF8KpY5XjcuPBJIRxbNi9n4PP+qAttsNXTaeIjnrcRvu9OQQu1+irFunoJrPOCsepiVPJ6xwES
	JXiuT1gWDg0kJY8VLd3ifceDFvkmoXwNTdpmtZGiLBKuTNNw1VHCddOMa1zGpOabcfVOVnzUOCUmk
	eaGjqtkpmSBUSap6DJMxbbdxDYym6dKFf6vs58ol9jOiNPp6TYFlFFRh1zQqDomthbuYrRJzs2rgT
	mKK9/gZKvq60yXCmf+gIFCNq+ebrOtBNHGVefNeYh6wpiN0uSgXONtZvnGwKSClNbkQVDnRABz3j9
	9iC/mbcEIBxgyH6VgD4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyan-0004ZH-RY; Fri, 08 May 2020 08:42:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyal-0004Ux-5w
 for kexec@bombadil.infradead.org; Fri, 08 May 2020 08:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=NMwBMWVz7Kvu4wPaq4Zrf2HTRO5lLJ1XAoScD/RMxlg=; b=MmBGdI2TQKmzwL9FE4TAn0gGDf
 987lHTPvfsUUgBCQjUe6w++Qg1xR4J5Nd/KDHYUGPmC9Tbfcfmo1pxT+02Wfv/7UtS8DVWfN8fnFl
 tcGTIrY0HTnE5x9828P4TuuwyhEksxzV3td6ZxBuKq07s86vZrsNj5YKwOc1nqvo606xRLebZe3Wk
 6ZzsfUX7wS29RRZDzKfAvfG6THJPB43jky3F+stJorxpC83kK9DLWhRX5kAL6hUBFNvTKyQD77FIS
 c+j+567JHpwfjbV1Pa/TB08lkSsZFW+ULwh17AgSBvRh6ZS4hAKZgbO6edJdJBpo2KISejjaeXXpL
 xvsB8UyA==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyai-0004Ki-DK
 for kexec@lists.infradead.org; Fri, 08 May 2020 08:42:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NMwBMWVz7Kvu4wPaq4Zrf2HTRO5lLJ1XAoScD/RMxlg=;
 b=f8TYhC9LwX+xb43SsyV63/bk91anCyMd3bmUJts1NA3Udfmd7NfrhnB0hoznQFUdeyNVDZ
 IHeCbslz0CBXPNRELHyqrPPOx/6olyuWYlVFLFrhexe8FgnY7h88djgCnGtV3+ao17Y0IW
 S+HFNeLaTMGbw4JWwgzfGS6usYXwhSg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588927364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NMwBMWVz7Kvu4wPaq4Zrf2HTRO5lLJ1XAoScD/RMxlg=;
 b=f8TYhC9LwX+xb43SsyV63/bk91anCyMd3bmUJts1NA3Udfmd7NfrhnB0hoznQFUdeyNVDZ
 IHeCbslz0CBXPNRELHyqrPPOx/6olyuWYlVFLFrhexe8FgnY7h88djgCnGtV3+ao17Y0IW
 S+HFNeLaTMGbw4JWwgzfGS6usYXwhSg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-mShYxTwKMfS5m95lvKsheg-1; Fri, 08 May 2020 04:42:40 -0400
X-MC-Unique: mShYxTwKMfS5m95lvKsheg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03028107ACCA;
 Fri,  8 May 2020 08:42:38 +0000 (UTC)
Received: from t480s.redhat.com (ovpn-113-181.ams2.redhat.com [10.36.113.181])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED1635C1B0;
 Fri,  8 May 2020 08:42:34 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] kexec_file: Don't place kexec images on
 IORESOURCE_MEM_DRIVER_MANAGED
Date: Fri,  8 May 2020 10:42:16 +0200
Message-Id: <20200508084217.9160-4-david@redhat.com>
In-Reply-To: <20200508084217.9160-1-david@redhat.com>
References: <20200508084217.9160-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Memory flagged with IORESOURCE_MEM_DRIVER_MANAGED is special - it won't be
part of the initial memmap of the kexec kernel and not all memory might be
accessible. Don't place any kexec images onto it.

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
 kernel/kexec_file.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index faa74d5f6941..bb05fd52de85 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -540,6 +540,11 @@ static int locate_mem_hole_callback(struct resource *res, void *arg)
 	unsigned long sz = end - start + 1;
 
 	/* Returning 0 will take to next memory range */
+
+	/* Don't use memory that will be detected and handled by a driver. */
+	if (res->flags & IORESOURCE_MEM_DRIVER_MANAGED)
+		return 0;
+
 	if (sz < kbuf->memsz)
 		return 0;
 
-- 
2.25.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
