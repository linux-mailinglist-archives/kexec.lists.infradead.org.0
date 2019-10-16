Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51995D9AB4
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahZAkrqDU6Uom2deLJDZ6X4/LOauKoxWB1Hrh0GpXjE=; b=sV9zyaDdvfo3ey
	X6M2lKiDUQeEcWG5sCze4Fteb9yDQ7xv78DW9XZ2kOKAISPO5Fuj8pS527Ds0yqAxTUkvYQkE9gT+
	80JAp2TnkiDpby5QGRZvQld8Mn1JDDXXUi+caJHKLwCIgezzl2o+2Ao1Y9g9EIJ+oYqaN4j/SnTVV
	83P+WauUsTelhZ9Re+2Sz/NPpoL3dTF68snec0ZNdsI43mtLp+oYeJrCpq/VdqhjrfQGOJhM/PmOO
	Bq0YwgiLZ+jOVGsVfh/Y0TjAiQp2zclKBFbkEuoixp0GjWM/jNkJrC48o3TE1t6xMeQlOP/h4DHcI
	nZExPxpU2SJ/VtiQ/L5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpVm-00065s-3a; Wed, 16 Oct 2019 20:03:10 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTS-00047Q-Ra
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:48 +0000
Received: by mail-qt1-x844.google.com with SMTP id m15so38053055qtq.2
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1tiYj23HzXJX4ZgHt0ym5ajKMNsnlXF/xQZzBPKQP48=;
 b=bptSRtBN3xr8useYmB7iLV+OcV0ABHihVJ91UYRzIEEb848dVyygGn+GE2+y3sD+H/
 Ehgz4BslCL365594q2uwcmw87mAuhVCKVq/TyG5alBLrXhyPibXYtKRBQWqMAkZ9CoYC
 9gsBU+jwTuKTMeH0NqgRU0ie6dAH9U4KR8K9yJfl/vmKON73ksH2ohoeFCWPK6TWnGs/
 JY6rS3hpFuit6exKgtq1rRDzbjh8aCparhwYVDnwi0yOtbtg6XsW3ND76Y4zZO7Kgb/v
 K5H0M1+2n/9/qGjrK17r20FGbMgWr0Qfx2uD66/tMR219XpCScNUfnH9v+OJDVSWzhgA
 YK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1tiYj23HzXJX4ZgHt0ym5ajKMNsnlXF/xQZzBPKQP48=;
 b=EBMaA+vCMI3fjKj9a/jwxDcbQ9IY3OTN0ckulptVGjyikngN1HXdTyVYlkfSH39EPl
 yGuEEukzRVl6BwsLhizEpjxZLMAAc66NEKhaqlw3hvPFuYHzs5Td40EstosxpxutK98C
 rZg6Eb8pY1hAr5e6qOwvYjErfNxqxT+avYcDyYE/4uE3VJX5BwrCxhSqiaJjvAStRIXc
 m5fwfx5cnFGtDxh3er7RNCLquHsqrxupbRSWaaT/o320TC091NjAy915dDr1HZItge2q
 4OKtZ+t/JmhGj8VGGaWsXiK2We6Bj9uesGYYUeMfacVjPhTj8lKeG6si0io8BvdVxYjv
 Pd4A==
X-Gm-Message-State: APjAAAUH3RwB1ufB1Yry90JOJTvHw89AGUqMfRmW0o7cOp+RmMljUpVf
 Nl1bcmYfzlSFtuB4X9V/URwasQ==
X-Google-Smtp-Source: APXvYqwmRVQSdQU55owY+pKif3Q4GJGRGYVJkFk5zjZ7AznjZD2B0mWV7kq/8erD2qHWWjyifhfziA==
X-Received: by 2002:ac8:550d:: with SMTP id j13mr46331075qtq.37.1571256045529; 
 Wed, 16 Oct 2019 13:00:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 05/25] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Wed, 16 Oct 2019 16:00:14 -0400
Message-Id: <20191016200034.1342308-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130046_957576_CE0BD562 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
