Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A96E142194
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 03:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cJnirhc4ZvKUnfF57nFuJUoDDdtcjPGh2PbeyQhR0Wc=; b=ZZw
	ON5e8rCU3Yi+okJ+HHX923qF1Lu75uukV8DlRrawHkrCUirVYIu/GWULP267shIoRciykZum/N/le
	li8msTsq642Og6cFPw2IZ8sM9M3YSF5Gce7hIL/7ejXsR1JvyJdc+POIW6l7ekS05xkS52kNrFy9N
	bQhs9pP93LjuHlpsB2zu6Pmeu0YKWFfkqMB4Jj8WZgI3ydwYWva8nFdXUUkiJD35CMHM6nfrX2KWe
	RaW0SuFUevhOWjDNp4z5BkT/Uu5GWMAPnyntNmxhigiST108bs1BbZ+J7DXMkiCMYKYIiNNC0iXSR
	0APfUmVsa1UNUabQxBvUV877aQng/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itMnR-0003VJ-18; Mon, 20 Jan 2020 02:28:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itMnN-0003Ui-9U
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 02:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579487281;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=FLF+yv4gL40RGkTVkSaZbivK5L61L/CdB0G5axahDk8=;
 b=F61FNmGIUBSj+zLAQod0wB0cc7SlMmicQh0c8vInzbPxPjHEk8s/hS4kdlOApx086ehIbI
 2y8z6LjFJ3PRu+4qz2vNePDBWsJsvs/DV6n7+AEHeOC9wemi/HK9EzmCp7QQNMqCSc3KIV
 oCB0hQ/V7MlmPIsrm6QQWOAdSIoCyvE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-qHH_p14MNY6N5-QvtnB8pA-1; Sun, 19 Jan 2020 21:25:46 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FB0D100550E;
 Mon, 20 Jan 2020 02:25:45 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0AA384DAB;
 Mon, 20 Jan 2020 02:25:37 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile: cope with not-present mem section
Date: Mon, 20 Jan 2020 10:25:24 +0800
Message-Id: <1579487124-28426-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: qHH_p14MNY6N5-QvtnB8pA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_182805_408271_AEB00B76 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Pingfan Liu <piliu@redhat.com>,
 Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

After kernel commit ba72b4c8cf60 ("mm/sparsemem: support sub-section
hotplug"), when hot-removed, section_mem_map is still encoded with section
start pfn, not NULL. This break the current makedumpfile.

Whatever section_mem_map coding info after hot-removed, it is reliable
just to work on SECTION_MARKED_PRESENT bit. Fixing makedumpfile by this
way.

Signed-off-by: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: Baoquan He <bhe@redhat.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Qian Cai <cai@lca.pw>
---
 makedumpfile.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index e290fbd..ab40a58 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -3406,8 +3406,6 @@ section_mem_map_addr(unsigned long addr, unsigned long *map_mask)
 	map = ULONG(mem_section + OFFSET(mem_section.section_mem_map));
 	mask = SECTION_MAP_MASK;
 	*map_mask = map & ~mask;
-	if (map == 0x0)
-		*map_mask |= SECTION_MARKED_PRESENT;
 	map &= mask;
 	free(mem_section);
 
@@ -3453,10 +3451,8 @@ validate_mem_section(unsigned long *mem_sec,
 			mem_map = NOT_MEMMAP_ADDR;
 		} else {
 			mem_map = section_mem_map_addr(section, &map_mask);
+			/* for either no mem_map or hot-removed */
 			if (!(map_mask & SECTION_MARKED_PRESENT)) {
-				return FALSE;
-			}
-			if (mem_map == 0) {
 				mem_map = NOT_MEMMAP_ADDR;
 			} else {
 				mem_map = sparse_decode_mem_map(mem_map,
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
