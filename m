Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897F313D26C
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 04:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qV/DfPk8rS7Mwb2BXYri7Rbx0N64LQVM6oxNZPnCtIo=; b=Gk0
	SiJ5MoBrTi2J8RqiRW5nzBU9zZfyfMRHtsXXht0Kpo3508ZNCY+QzAfNnLQmaeywWnSYwXpP7KFoj
	/OrfGiykO09JOpyC0+qAbv08F+ekcVGoxvFDWDX8q5LpNyhFcUXzInqI6NNmjiW/cdslfNzLD+GUj
	aG/rF23++1KiZNBtLxRftMrWFl6KWnk31um7J4HazMMUf3J+xXWUgfuy5G0zq6R2O0wDK9pXSbju/
	OBu8uaWp01YhdCrUIcdoQSDqKrprTIDgIMPZoz8NERT6/O8NHQVUHfHFyB9BrqmDYNZil9Pl4rXMD
	3juGEpe1n+cklPBVhaP9WiuxX39wFxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvRf-0004AB-OW; Thu, 16 Jan 2020 03:03:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvRc-00049Y-Dc
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 03:03:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so7691572plb.11
 for <kexec@lists.infradead.org>; Wed, 15 Jan 2020 19:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NJlj509WrrQAYExVBbW6kNqKcDZkIxwdTMPkSzlPl60=;
 b=eIDG2XquDRZXR6AZX46xIzm/uge8ctQ5iQ2A3jntmM5LyyoiSAJ13nA7n1IB2cuktg
 wmqvKY4uIjhHOOcn8lOQC5gWQTMGGXJD660T8LvvedpAVOjsXph94dwzd/QVPT8rLwP0
 I1WzVm5WIOadjcuSC4+z+EJGblEsUzv61r00zTKFENhyMkU2dqnMt/wj6+bxPB6pIMOQ
 XFuFX17h+mPHpyRegex7aFBcBXQw5e/D3Q6k6Da25/B6J9kORlVIhTnd9zz/XrNzW5b2
 IHz+6YzHje0EKMeDSzQhnpi823+zGC/DPcsmeFWwWOtvCG88zpX4k5UyhAN87KIIWFMT
 vw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NJlj509WrrQAYExVBbW6kNqKcDZkIxwdTMPkSzlPl60=;
 b=NM10TnrjDSaSHOxP4zQeEfipPWn1nVhTseaT7/cL3EVnlivy+GaJzzXFERGhp2yuCS
 BvZWkG1fdq8Zvrt+VE64Gr0xjVMmJPNv85JGTXwbW59yu6db8KkTp79ppzIJBTFxdG+U
 tUjHp7lWSZSWtSX8zPzQ5YLdzFBBEtZ1BC+WzEzj5grklnf6erXCIF/ZQQwNwA+uJxLR
 kXD7YqxD5IjZ/54zcMgqqF1JPIqwRSM8A/Sb14Ks2HcyG0JQeUuinQdjHy5dhL4HLF3A
 b0vE3rhmNZ271vfVLFtUcfYAvnojeikhDNczvGt2g/VNIUPAfofY4v0QkCwvv9C76aY4
 Exiw==
X-Gm-Message-State: APjAAAUmE9FKmhMj3brHE36o4qpiu/XaeKzetZMg/093D3n6BrUYO/gm
 V+85Q8g0fyaxFSzPepNrOQ==
X-Google-Smtp-Source: APXvYqwkXB++jFBOOUuymtAItWPDj/3Lo3eBBRlyHsGVi0CAjgdRUAoV9OR1gy6vavVUsvtrjbgoSQ==
X-Received: by 2002:a17:90a:d156:: with SMTP id
 t22mr3829964pjw.108.1579143819314; 
 Wed, 15 Jan 2020 19:03:39 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id g8sm23095230pfh.43.2020.01.15.19.03.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 19:03:38 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
Date: Thu, 16 Jan 2020 11:01:08 +0800
Message-Id: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_190340_484376_60FA3F09 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When fully deactivated, it is meaningless to keep the value of a section's
mem_map. And its mem_map will be reassigned during re-added.

Beside this, it breaks the user space tool "makedumpfile", which makes
assumption that a hot-removed section having mem_map as NULL.

The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
trigger a crash, and save vmcore by makedumpfile

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linux-mm@kvack.org
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Hildenbrand <david@redhat.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: kexec@lists.infradead.org
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
---
 mm/sparse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/sparse.c b/mm/sparse.c
index 3822ecb..fddac80 100644
--- a/mm/sparse.c
+++ b/mm/sparse.c
@@ -789,7 +789,7 @@ static void section_deactivate(unsigned long pfn, unsigned long nr_pages,
 			ms->usage = NULL;
 		}
 		memmap = sparse_decode_mem_map(ms->section_mem_map, section_nr);
-		ms->section_mem_map = sparse_encode_mem_map(NULL, section_nr);
+		ms->section_mem_map = NULL;
 	}
 
 	if (section_is_early && memmap)
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
