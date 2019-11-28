Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B0910CF36
	for <lists+kexec@lfdr.de>; Thu, 28 Nov 2019 21:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iCEqVccn+NXhOJh7wRHj9aUa1gaxQqWeExxULoL1bWM=; b=H3SorrrsIdVwEcgK+7GTNksGUP
	5cMDh1jOgiUQbhloKluaAUz+6TunvdQZ6Ii5Ffx243Lk4t5h8QazOvfItPF7QcGTBiMGVS+ooi/lr
	6bwlrXoUBsahkxDlXs+q2yFYC4JaX6WYU/zqqLwyFwgxafutmg4nEL3jhwE+TVVV2Fjcj+7ydUbBp
	W9GcLc9NSmd3sbEiQdFGU6a+hIohuUTGvitRpSDTa2bL35RnXSFiyQggMwyWKoM0DjoQU83h2cVYY
	GIGeVCmPFhA5fWoVlUN+82LTsYVbkV+cvyJ3JTiZ7DIQBrwjUyhfs7w2OvUBbRt9mHpM/mQtmB4KA
	QaXbRGcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQMf-0007Zk-Ce; Thu, 28 Nov 2019 20:26:13 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQM6-0007EC-1S
 for kexec@lists.infradead.org; Thu, 28 Nov 2019 20:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2FRKI5+6EDUKwn2QzAstv2u6dW0Q8/ilQLcz5atGxuE=;
 b=UTS2TgjbjuBUmnfms8LwPbscvfNQdrNbzoGHXEMRyJBeGarDQoK+K72IDJwF6n/L9/7i2G
 LXhT39qPzfVQKz+JJrI2+vrMubGZh4mW8s0j59XTAyROEcFwUqhUKlX6T6QpbgYdcDqqeh
 p4NgDZh7L2I1FuL8HI14Ntm9KY2+U/w=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-nq-mPwNkNyCLLrK58RrIog-1; Thu, 28 Nov 2019 15:25:35 -0500
Received: by mail-pj1-f69.google.com with SMTP id q22so13388596pjp.14
 for <kexec@lists.infradead.org>; Thu, 28 Nov 2019 12:25:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BgAr5VVOQXh1yien5qVgdgmIL5RHbScoYGF2ala0/ak=;
 b=EYZMo6zXQAOD7JMoxh5cuU2m/TZb621Xe03yv14ua/uFwY998FLlCrCUOln/PTaazO
 6suLmFgzU74+Uh7pb/D4PVBJ1IzOJ2nWHa1VuaseyhKH/4FyUYvUQfhz5WAgEDkO5wRF
 7s8WUdV8jGqSUYsA6BcxTo/LoBFIp8ip9JeID+4Gd1T1qOCOW/pJ1qK/1C6LbaCpS1+x
 LnLWLH2VgzM3jzgHYKCLb7XVlJHCKxHvu4LeS97c3XDFerfwpbHu0EJ+gWzIKKWqHqL6
 wWVokufvEZd7OZExyYkjr9ozFsWtCZH9U1uUaYbkj+OiQjRDA+TWUVZFbEyjNvq0rysk
 n3AA==
X-Gm-Message-State: APjAAAWKQkiDEtkmuMwacavK5vpmDkKgb58p/c6M2xHMQMKnKQRa9HtB
 ET1iYzlUJu791IIv0gOHy/lm5NtfV+LJ9cQ6NwXSrA/UX09PnN2WN8rAwWVmS64pVPMXwUjOKIU
 +tOxA/N379G9BP9OPPsMm
X-Received: by 2002:a17:90a:9bc7:: with SMTP id
 b7mr2779331pjw.72.1574972734275; 
 Thu, 28 Nov 2019 12:25:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzGw9W2BseetWuCKGjOOk2X1gZmHcotzHkh3qc0nDt9y8frA3vEMk0c5zDGq7c6I7jA3cnCbg==
X-Received: by 2002:a17:90a:9bc7:: with SMTP id
 b7mr2779308pjw.72.1574972734045; 
 Thu, 28 Nov 2019 12:25:34 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id hi2sm11225511pjb.22.2019.11.28.12.25.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:33 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/5] Documentation/arm64: Fix a simple typo in memory.rst
Date: Fri, 29 Nov 2019 01:55:14 +0530
Message-Id: <1574972716-25858-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
References: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: nq-mPwNkNyCLLrK58RrIog-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122538_173513_EDC6552B 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Fix a simple typo in arm64/memory.rst

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/arm64/memory.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/arm64/memory.rst b/Documentation/arm64/memory.rst
index 02e02175e6f5..cf03b3290800 100644
--- a/Documentation/arm64/memory.rst
+++ b/Documentation/arm64/memory.rst
@@ -129,7 +129,7 @@ this logic.
 
 As a single binary will need to support both 48-bit and 52-bit VA
 spaces, the VMEMMAP must be sized large enough for 52-bit VAs and
-also must be sized large enought to accommodate a fixed PAGE_OFFSET.
+also must be sized large enough to accommodate a fixed PAGE_OFFSET.
 
 Most code in the kernel should not need to consider the VA_BITS, for
 code that does need to know the VA size the variables are
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
