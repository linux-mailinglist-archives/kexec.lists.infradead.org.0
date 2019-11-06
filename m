Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9607FF14F2
	for <lists+kexec@lfdr.de>; Wed,  6 Nov 2019 12:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eRjf6yPL2+J6OwUZ7VFNzKWYraaPTzZJ7opXFft6Ag=; b=Vy466iYE6c3UH+
	A5W554cc0MlT6+4d8g4agHXS8wpl7ZWj2KLX6kZzy7iRA0Xq2GcQkbezRnwSXZVcxA5mIJFbAoG5f
	SeGN/iMKagMM+TJe5EJ3h+mo1zS7S6dmpiSqRnPJiKlcZzwrl98AgmTHiWH2KF26SR1ngy8q7w/DU
	ZU1hw3vjXV4hPoqjmvP5UO13BmHbGhRQgonu5kWv4oEHJzk+MG3hFOwAJ9ZL7XgfYSauWroOJf4IF
	95QnTRlouKiUDFihTTk6WNu0B/bXnC+udb5YHsvGYDG04wNeK38BItH+th7x3R3HrFKzcimFDJLO2
	ycVo0NsqvYucCSCdw6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJPD-0001Jf-Uc; Wed, 06 Nov 2019 11:23:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJPA-0001Ia-IY; Wed, 06 Nov 2019 11:23:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78A097A7;
 Wed,  6 Nov 2019 03:23:14 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2525F3F6C4;
 Wed,  6 Nov 2019 03:23:13 -0800 (PST)
Date: Wed, 6 Nov 2019 11:23:11 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] arm64: mm: Remove MAX_USER_VA_BITS definition
Message-ID: <20191106112310.GG21133@arrakis.emea.arm.com>
References: <1572904606-27961-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572904606-27961-1-git-send-email-bhsharma@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_032316_655168_98D4D45E 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 bhupesh.linux@gmail.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 03:26:46AM +0530, Bhupesh Sharma wrote:
> commit 9b31cf493ffa ("arm64: mm: Introduce MAX_USER_VA_BITS definition")
> introduced the MAX_USER_VA_BITS definition, which was used to support
> the arm64 mm use-cases where the user-space could use 52-bit virtual
> addresses whereas the kernel-space would still could a maximum of 48-bit
> virtual addressing.
> 
> But, now with commit b6d00d47e81a ("arm64: mm: Introduce 52-bit Kernel
> VAs"), we removed the 52-bit user/48-bit kernel kconfig option and hence
> there is no longer any scenario where user VA != kernel VA size
> (even with CONFIG_ARM64_FORCE_52BIT enabled, the same is true).
> 
> Hence we can do away with the MAX_USER_VA_BITS macro as it is equal to
> VA_BITS (maximum VA space size) in all possible use-cases. Note that
> even though the 'vabits_actual' value would be 48 for arm64 hardware
> which don't support LVA-8.2 extension (even when CONFIG_ARM64_VA_BITS_52
> is enabled), VA_BITS would still be set to a value 52. Hence this change
> would be safe in all possible VA address space combinations.
> 
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: linux-kernel@vger.kernel.org
> Cc: kexec@lists.infradead.org
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
