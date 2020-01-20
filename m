Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10183142199
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 03:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vpxKeysZ7QXYzf76I/ouynNqO76JvmEB9KVu0XA3GDs=; b=csJ
	8myJw9qoP125d36W6u/F5q/wnT06hBU4xyeOBi83aZjVEW4fvR4TKpEWRNWgN6wrq73dTnN4AUZXL
	0VP9Z8TCbZF9mn8tLsGGLvHzHgTd/sZ08xLl9WNNi5dBJ5XxMt9EJsW0Scya8wxcYQYV7TwIQrhFB
	ZN9QnT4EK/2NqW0Guo5/28q0oA9EBA4ORZ+8jqRMW3xtsN/A5uQ68hlt/VNRnv192AntHtTKJ/EBn
	aeNgt6DdkEm+iFvaOCq/Z/o4YNQ8x9ao3cr90FGAfIgZgBzTJNwOSebuuWe9ZFSVx+kOmcJ/7pQdn
	nGGRE1Qqv2lBgboaWB2YUVcPSfCdYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itMur-00068c-8X; Mon, 20 Jan 2020 02:35:49 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itMuo-00068J-Ax
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 02:35:47 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx11so6023510pjb.4
 for <kexec@lists.infradead.org>; Sun, 19 Jan 2020 18:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wlt7J6YX/+zJd9kW5sXYOIVVIkX0dlrdrokN/uFDoZw=;
 b=mxy3bJRI2vIq2veTmVnwjT5q8VSFqnGz8AQlKMCTnT+JDDgo4mDeyrA+fYWdpiW36E
 j7JvxAOn+JBAO1e2b8sm4l0YSmOWithMnU+S6BLQwnwn2dqYJP3D+ezuNqhYKK88Bjw2
 HY4WwdBgdzaQU+76LW42EbhIUp/2+OCz3AMIf8INDkhzROxB6dtMAggCOMkFHdpJuHcD
 qIV7L1DMP48LfwMsD8FyYycDMJwxVNpEJ/R0MsaLSacRRHgLl32XXUJuKsAVIZkRevOL
 dM+mafA29AQQ9VkKFMv+ZQym+JItHEY7vV5YhAjh4r0Tya7ceXvVzIgQuZ+nH1PMwh8p
 mshg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wlt7J6YX/+zJd9kW5sXYOIVVIkX0dlrdrokN/uFDoZw=;
 b=UGoWvgEamJLb93nGO6hPpjDIQiDKLEO+WqBCJxePUyAsIQK/eqNZNA+Y5LE2gtc7G9
 OiPO/DuXFN+xUHt+3L6sRDS5QjNS4OS0+ARs+FFJ333BdSkvcqS+7tfn7P4Z18N4TJjN
 m6vajL9kOSSjNbN6Xfk1Xx13T0Si7t8eFhO7vuXOxKPa2DA1XrEBULlfPxT51vlLtgRA
 luADuTHQ0x00hMXC4mAjdyTnizRYZW/LDG19OKgzf9k1byMIkD9TRelWngpZZ2tk2VGg
 aZVFWJtNoTcxMJWPOjqAKDpFD6Dn3axhECpuWDWyTLKaOafULzT3quXrZTOvt1tm56z6
 4MIQ==
X-Gm-Message-State: APjAAAUpJWIC2j/kFqZjgsEuw7yUR4W22ugtDCs/9lsacxnCepPN5R8p
 6ZQ8a9slN9BEj2FtvYlKIw==
X-Google-Smtp-Source: APXvYqwKdppuo78Bmv4mW597zkYEkcjDo1L3fm2u4vw1ikPyVxK1zADeKN4O/RbMBCnabUd0f7C1Tg==
X-Received: by 2002:a17:90b:8c6:: with SMTP id
 ds6mr20172885pjb.111.1579487745338; 
 Sun, 19 Jan 2020 18:35:45 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id y197sm37574075pfc.79.2020.01.19.18.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 18:35:44 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCHv2] mm/sparse: reset section's mem_map when fully deactivated
Date: Mon, 20 Jan 2020 10:33:14 +0800
Message-Id: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_183546_377907_6CE690ED 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

After commit ba72b4c8cf60 ("mm/sparsemem: support sub-section hotplug"),
when a mem section is fully deactivated, section_mem_map still records the
section's start pfn, which is not used any more and will be reassigned
during re-added.

In analogy with alloc/free pattern, it is better to clear all fields of
section_mem_map.

Beside this, it breaks the user space tool "makedumpfile" [1], which makes
assumption that a hot-removed section has mem_map as NULL, instead of
checking directly against SECTION_MARKED_PRESENT bit. (makedumpfile will be
better to change the assumption, and need a patch)

The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
trigger a crash, and save vmcore by makedumpfile

[1]: makedumpfile, commit e73016540293 ("[v1.6.7] Update version")

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linux-mm@kvack.org
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Hildenbrand <david@redhat.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Baoquan He <bhe@redhat.com>
Cc: Qian Cai <cai@lca.pw>
Cc: kexec@lists.infradead.org
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
---
v1 -> v2:
 make an explicit convertion from NULL to ulong
 improve commit log
 
 mm/sparse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/sparse.c b/mm/sparse.c
index 3822ecb..3918fc3 100644
--- a/mm/sparse.c
+++ b/mm/sparse.c
@@ -789,7 +789,7 @@ static void section_deactivate(unsigned long pfn, unsigned long nr_pages,
 			ms->usage = NULL;
 		}
 		memmap = sparse_decode_mem_map(ms->section_mem_map, section_nr);
-		ms->section_mem_map = sparse_encode_mem_map(NULL, section_nr);
+		ms->section_mem_map = (unsigned long)NULL;
 	}
 
 	if (section_is_early && memmap)
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
