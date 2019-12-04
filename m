Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259D8112F6D
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDsjIqx7JaCr3l4FlImJzFMM0ddP54sivJw8c1Tnyvg=; b=AxO4/mUFbKd24x
	uWXCJJ749yipzByVf2/Pyhph4AtbfntLovMrukGajhtE65QBA5W+MawToT5mHLTlYgU1MFYAwYtpc
	/zKA3/yDpnWM0kT700xRd5SCa70MuHETd6qaVLORbltYx4Jrr6LeDj318xKO81DL5Nb7OVQIy5aP5
	Xrq2ZLViRnNk2GdGEwvXkRLbCnPeetzjbPHrAR2RxIcMUOuzMnbjlFzZiOvOhkFMJrRjc7OrgZIiy
	lX+qphuJOvp3B3E/IiMqgbYLesJ+BPUM4N3IafesACnOx+rXc55rZ8Ni4yqhyuTPn+g3evDRKRZBf
	DawhGtf3ewyT9oZ5I0sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX7N-00033o-1m; Wed, 04 Dec 2019 16:03:09 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4D-0007OJ-Q1
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 15:59:58 +0000
Received: by mail-qk1-x741.google.com with SMTP id d202so390991qkb.1
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 07:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fVYvb4CPMnyIVG1hgy1MDDfoLwRyTtZYsYaQvsi8498=;
 b=dZgMVj5phzD4WJ2lOv72Eli/7A96+5Gpb3Ad7wS4GpAFxm3R0rC/e/T/q93LuYYwPm
 4Uz5Q8I/DWN0wNungTmuJGHv9zyRMvbTlDr5/OzwP5GoC30b30nMCyYmFdgSAwxtMCMr
 s6GVlkYLM0/inwraONhs7ey8QePReOKIsyMKUfWui2nc3itEsnkD96RTEB8rvLSAdnIE
 gtTPLG5LSyobuU4GMuMU/5vT8Hc9i1eSaNPjx2L0ArP8dc3LXawEBRgI5ydHEvRBT4TF
 bSgRb+cyZ1GQ1BQQp9DFLSr5KzZM+QJWqW7HmPTzU/iVWuCWZJxYtxCvbzaIsVERIBY1
 MihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fVYvb4CPMnyIVG1hgy1MDDfoLwRyTtZYsYaQvsi8498=;
 b=olUtJFTk5jhmEJglssxa9aZIqbQtzCBeKO6cqzSSuH0R0yV+R1xP2tyVFxtTDfwu4+
 X0sAkP2fkGAfRaRfnm6O2Pe/NW3p1Of4gPlc6DkA9heTr8jP3I3oYOeJkIggGmyYSiNP
 UcgXFR0mW+E3oEY4n0POA/AxuxyBC4RNekCyIVw39aSYTPbQTeJwbEpD0J2v/rCQ0S/w
 Gi9yL/0KgDUpib8JRk3t4iAXibcp0O4BlMN/AxbGoNGztH/XDbz2iWkwOFA/r+6xfOfW
 GAQ4BwQLzUQcgdE3H2eUCJXDwMJ+KdPsVVcSgMN3VaPmUBTv6bxUUxILESTGwj/ZGrhb
 Ux+w==
X-Gm-Message-State: APjAAAWiLQ9i8k4ezdRBWosOCS1N0TzcOuh+Ax4Ypez746ttxqi0dUGC
 PhNRiivNc/kE8OuioRNGzOWQPQ==
X-Google-Smtp-Source: APXvYqw8jqG/hkE99HXXnyk9J4EEotNsFaWyu6oqW81IWVO4OQqs2JZQD9LGJEKBgl2Hhffa8MbTdw==
X-Received: by 2002:a05:620a:1459:: with SMTP id
 i25mr2498599qkl.36.1575475192642; 
 Wed, 04 Dec 2019 07:59:52 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:52 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 08/25] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Wed,  4 Dec 2019 10:59:21 -0500
Message-Id: <20191204155938.2279686-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075954_178151_78607107 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

create_safe_exec_page() allocates a safe page and maps it at a
specific location, also this function returns the physical address
of newly allocated page.

The destination VA, and PA are specified in arguments: dst_addr,
phys_dst_addr

However, within the function it uses "dst" which has unsigned long
type, but is actually a pointers in the current virtual space. This
is confusing to read.

Rename dst to more appropriate page (page that is created), and also
change its time to "void *"

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 83c41a2f8400..1ca8af685e96 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,18 +198,18 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst)
+	if (!page)
 		return -ENOMEM;
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd)
@@ -240,7 +240,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -259,7 +259,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys(page);
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
