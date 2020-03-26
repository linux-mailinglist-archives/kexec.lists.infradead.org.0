Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7D51936EF
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMn19PSL99tPUQ+jsxj8MhyFAwrynqJA7QWXswoQRz8=; b=Jst0jFrGC6RsRo
	4YjLNAqQyEvZXYrkO0JQcYhEc49JengooKRh9fCu+qPNVhqOnUaP32cSG9dAM4eMHNR+OC8YE4Jcq
	G5jFezAz7n3qPFJ8iDBnpNASiRJ5PoQtifAFdr0VSIVMfUWRjB1ZLZCCHEZ6ka0Dwu1LbBL83ec9I
	NvZxFwwOEJ9HQcNd8LBbhT3+KCnVNvBK+dBNHwvR0jCnfJYCJZe/MWhkW02P7mzItE+knPNj4IAaA
	u/R4oy2dSv6FlJrNA/4pvYujg0+TkdEq3hD1TBxqnIQP/SFOIKm2ZjBcnU8sIfM8LTGBy3ZE5hesw
	X3SeU27JIZmodx/dna/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJBW-0007sC-SA; Thu, 26 Mar 2020 03:27:58 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8D-0004aH-Lg
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:35 +0000
Received: by mail-qk1-x742.google.com with SMTP id e11so5065440qkg.9
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=BKhAx6BebFw/oEITnjoM5nL1ibAHOPqPAiH4c9gaYa8=;
 b=YNFNHzcL8opCZWUO6XnLzhdlsu4Yy+Rizy9yCWVbFy3ZRpvtcZv2puWnEOvUC3b1Vt
 XHs+hMfat0AMwYaJFwe1RjtrQM1/uslxPjzHvIs14d1/5BioLW/YL75JijXhWEBD/9yF
 5sEve9b8u+au7l1RKRTggSnH7moh6udjbiEcmw0ePceWaMVwexeB6yeHT0HIof6DX8JL
 fQtTMoJKaZnvMyOB2sU5splZqi4JPAZcRlyG/7Pf29MOG3wsql0XOZOoGU/cimjTj6y2
 2DVjOG87kdt+O93WALQb53VWLj/tVNY4j/j+Wlv7R+JedlxC22BoesYGUjxdDwJ3uBn7
 zG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=BKhAx6BebFw/oEITnjoM5nL1ibAHOPqPAiH4c9gaYa8=;
 b=hhwceYhXRFzcYIo2BSHHEI/zRtlilWOHhrL33q4fd0WeEyR1Ydswj4lPZueXft8t7Y
 uP8MQK1qG6W66+C2ck9x2C6yXJ9xZHEM/66YNRgnoRtQGbUYb3RIyK7awLVAr7YyAaea
 pu5SaWpNN5BRpvQo3oAgdCVkXj0rLOg6PdpYp/bPVdF7BEaPsQqa0an+8os90D/MhQK1
 BqpbO6aQXtMc+aMqWvr51nXLR8xXMk9879oh8My87atzOGXp5EJ67qyCudKViJbTWzEP
 pWcPoQbg1MjmpEuWv1jqZkW96Rc5hFq8gy1UYWi2Og+43GCQCeKcOBWEeNgFlvhQv6X0
 Ytcw==
X-Gm-Message-State: ANhLgQ3PhwT5ZPoDRHevcGx9M/RD+kEBPMyfqDbYg7E1yvFwtV4CxuTC
 xoco3+xwDtOK62YhcJHQ194s4w==
X-Google-Smtp-Source: ADFU+vsaZX4t6NPWbuLtjOb6I822H6afCjwQpAn6wOnDl28ywTXqmlBMj7nd/Y69a1G7LrS1oIl+Zw==
X-Received: by 2002:a37:a543:: with SMTP id o64mr6053234qke.460.1585193072231; 
 Wed, 25 Mar 2020 20:24:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:31 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 06/18] arm64: mm: Always update TCR_EL1 from
 __cpu_set_tcr_t0sz()
Date: Wed, 25 Mar 2020 23:24:08 -0400
Message-Id: <20200326032420.27220-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202433_908116_7FA05637 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

Because only the idmap sets a non-standard T0SZ, __cpu_set_tcr_t0sz()
can check for platforms that need to do this using
__cpu_uses_extended_idmap() before doing its work.

The idmap is only built with enough levels, (and T0SZ bits) to map
its single page.

To allow hibernate, and then kexec to idmap their single page copy
routines, __cpu_set_tcr_t0sz() needs to consider additional users,
who may need a different number of levels/T0SZ-bits to the idmap.
(i.e. VA_BITS may be enough for the idmap, but not hibernate/kexec)

Always read TCR_EL1, and check whether any work needs doing for
this request. __cpu_uses_extended_idmap() remains as it is used
by KVM, whose idmap is also part of the kernel image.

This mostly affects the cpuidle path, where we now get an extra
system register read .

CC: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
CC: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/mmu_context.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..09ecbfd0ad2e 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -79,16 +79,15 @@ static inline bool __cpu_uses_extended_idmap_level(void)
 }
 
 /*
- * Set TCR.T0SZ to its default value (based on VA_BITS)
+ * Ensure TCR.T0SZ is set to the provided value.
  */
 static inline void __cpu_set_tcr_t0sz(unsigned long t0sz)
 {
-	unsigned long tcr;
+	unsigned long tcr = read_sysreg(tcr_el1);
 
-	if (!__cpu_uses_extended_idmap())
+	if ((tcr & TCR_T0SZ_MASK) >> TCR_T0SZ_OFFSET == t0sz)
 		return;
 
-	tcr = read_sysreg(tcr_el1);
 	tcr &= ~TCR_T0SZ_MASK;
 	tcr |= t0sz << TCR_T0SZ_OFFSET;
 	write_sysreg(tcr, tcr_el1);
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
