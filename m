Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CFB112F6C
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpnLPh3BQuuHBgsF2CLvmGIuDnZCNubtxxPlaTRtBqQ=; b=bh3OhZ5ACjsfDh
	IRUZjayqjynbiJi/AEANLzgeWte5NB6vEB8OPV9WV4TyU1PBF72enSj8K15zYRF5/vjHzc7CnMtVy
	NWJY2J3KqmyA/I/htZaIOAjQl6BufiVwFBktkSZMEB7BHnEH/6WS1D53MzW3mPqfk/GMHS+HRv61K
	cKNkh6cSvBU3e5QRxYrW0T0EBI/I9WEbw8KZNyo7x5C3DcPdiS9txOrwaT97wkc5uVYwBB4GlReuy
	sDuQqikKiS8ScPRop/U0yMO3Uizz6rgOe7LJ2WFxRMdPCvh9EVTY2rkO1YCNYf2grXEIrLxucCCRQ
	nQ0MNTvo+Pbl4i80GLPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX7J-00031Y-LV; Wed, 04 Dec 2019 16:03:05 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4D-0007JQ-RI
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 15:59:58 +0000
Received: by mail-qt1-x841.google.com with SMTP id b5so185948qtt.11
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 07:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=mrHgWWXHUWXBn03njwP1uC49SHZHRCptq6VAl454YEg=;
 b=OCE7EeNTEySaYudN4WgDJVntl4hVVBO7kvt/qF2UoQCwbINGo+Mf5j0z+FJXLkjS5i
 YKQ3ii7bigLttEUa4f3W2IFSMCn8uqQ5/X1ODXUaH2XygO5L+lvs0BqWaq0OiftYXt+Z
 5eIxrfDN5lOpZt3j1qm1EZ0QHqEAFtH96JK+4Aroi69TMwsapzZ++1Sy1HTGY/4XynNB
 1ALtddFyBSWXeHLkNkAvaMhtZD43k0IEOT7PZIPGe/C2F/QDkuxpJhoaJZoBhPgrCAc9
 eHNfkpunSUY3VfO/lAmmh3ptTexrSfpOjgr0avhEga6w5lkHNBeCWeROXyGfCpp2Pkz2
 AE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mrHgWWXHUWXBn03njwP1uC49SHZHRCptq6VAl454YEg=;
 b=YrEeWXN44bsyXH644+HqPoRnqbV9h+Li2UcWn0hKh8UfVMNwrKCXpQgxqS+56ASjbt
 P3+HW+uU0rJe+L6KfpSUFosQ0q7gAdeHUd4On2CdmMn9+FicY8lqL8+1GFw1agw2RLf8
 DhKabiz15cV/JFJYDJzHpAKoN/flVo6hAs9YSy89GDwFY1ZzVrgxH2iLWWPy93UQ33pf
 hu7cP16s84pmK+eKr3JKNGak5TR7P3zsbTmcwIqeu93e8fpNJVJZC8lIPwFsLURXMvT/
 S9pcgvGg5adWaydgATphFbni7gyd4732vdLy6IUceDaLDAivs04hj0rOX7ofwwKbgikS
 xbXA==
X-Gm-Message-State: APjAAAURZ32IeEQoqBd244G7jLz4hj6xaJ0KPIASEj25myeKcm527vOO
 v9xZQpFs9C2lerTyOHTMMmXXmQ==
X-Google-Smtp-Source: APXvYqxHHSk1mtXaYINaTUQhuobJKQpL4nM2E+jFFMZb3TTDjUtboPmbRHiWO39AwzRbeusBuN7zEA==
X-Received: by 2002:ac8:71da:: with SMTP id i26mr3321440qtp.271.1575475188330; 
 Wed, 04 Dec 2019 07:59:48 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:47 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 05/25] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Wed,  4 Dec 2019 10:59:18 -0500
Message-Id: <20191204155938.2279686-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075953_925824_5FBF5DBC 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

ttbr0 should be set to the beginning of pgdp, however, currently
in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
which works by accident.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index a96b2921d22c..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -269,7 +269,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
