Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641DECC30F
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3m5Skgke5LNte1kP54mm6fDPgVXD4aTAQ2qNeM8aWU=; b=ArtambkLK0J+iT
	1qy/ojH5n3mPMoP6Q5mL1dqu/cKDGWqFgTwZDPHrjjiYSZNbPBUqPaROQ1HIUr1aAmvbZhAOCOQOo
	9smdHOr8mQBXAwcuzReELj67o8VTdxTf8fYH2eAzyniFMuIulQ/Euh8NjJ3Fr/xTSRc+4cdzrD4P3
	CAf47fYX3S57c/SZNtbjarxW9IddhUGdw5wR9agDC4W6shLQIgKiBlhHNLkejBREP+JhJOD+iUS0k
	QDfDrNiVWlQZYU7DOvKD5y/J0laRpTG46mXCchn4hTn5SBnp3t4JuJe68Fd8OAjX3EXkh419PSuop
	zKLzn8UOoYEHszepBpIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSiL-0003PO-HY; Fri, 04 Oct 2019 18:54:05 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSh0-00023l-Oy
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:52:44 +0000
Received: by mail-qk1-x744.google.com with SMTP id z67so6721834qkb.12
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=lVmb0L/iZn4vml+LkXL+dphQdKWHA3ZxZOSIfHW6RdR89T1N8qbenCUryqtggxK3xI
 2YWXUT+RIi3O3IPWLfEjGnZEot6UGfhyytibbPammdDaqqOHY2jSrYeeaz69WCX55zDJ
 ARR8UtRjp1dCiCMwHoD/kq1/FRE5CIDkp0WMatzDRfSMO3mVaWfALlnhYpfMmklovldn
 L+YVm/vC1fIiKHkItpf0CaL62jrrp3Mx4GvlKOg6qtSPOp29gwYIWkBObPyaPf6fFqfI
 cytqC/IKiibTxGr/3qe2UZdiTCHf6hQjg8u7Sm1Ig/duvtrFAuCuFXm/vwfjHnoMzJmz
 640g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=MZqsyXzzJy1MDnxQRM52IlC3oSxwp3GdWTTNetYAtrI4JgRqM5G9j6+9FK3VSIwnLy
 twc8tbVJukKbN3dbtRAVElcH7ZlNwZaOPJv8uwxuanQ1e4rRZ8DFXQt3exdaClnYcV2/
 Csro4opvQ9DsRVOCkJ03+u3p2E8Piuli+GvhZaMkE13yTbLnVb0ncHBX2YRcnGE1xRWu
 /mr7MHpzaoA3MpbTiBFSoL1uHFrLTBcK9mHlCkfCzP+PFxGzchLYTVj0I7XK2EljKpBM
 WuON2Wdck2l2sF6xhEGo4A/SkvkqCiBmkrdm52OPrNnIGpum8NxpzmFfYhZpfrZQfBc0
 Wg4Q==
X-Gm-Message-State: APjAAAWxDFhtQAIT1dhewjo/KjSZ4j9ekwwckAL5kQFFOZsuRtHQXjKh
 TOacTzbxvQhijv7fm31rC7+Sqw==
X-Google-Smtp-Source: APXvYqzPH2B95+uAdwEjwo4WR65DaJB/4AKIlmg9VM3DvOImvx1M/3g1HZeOciIjj3beg2Lbibemtg==
X-Received: by 2002:a37:9202:: with SMTP id u2mr11825975qkd.8.1570215161651;
 Fri, 04 Oct 2019 11:52:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 03/17] arm64: hibernate: check pgd table allocation
Date: Fri,  4 Oct 2019 14:52:20 -0400
Message-Id: <20191004185234.31471-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115242_833431_B47E5E5D 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index d52f69462c8f..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
