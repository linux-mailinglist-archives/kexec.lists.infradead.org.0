Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287B31CE068
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 18:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jy0i0tGHxdM15JDOD8ik9sI26qbPTZhrpBG8CEIYTBw=; b=gu6Ihur0MCFZ6w
	WawJ8qVk87Aj/TKpX491LMBbgApe2c5dCR5T6HfPesd3gN9iUARilXEcIl7F47bjoElE3ZFOLgeuS
	Pj/VgkRilIYAjiVZWZIrIoGRg/oMLdkLpZz2TjzdDsuaRKuWfljJYQkj/T/sYZF12Kd+eOo27juL4
	doReT4S/XHpVvQ+UqwMoletV1ttsQMwDs277231XLNdKSs1BniOfiDJFcUEcQpcYLiKq5jVPmr6z2
	uMTrFMemymLxuMO1w/97fzcMd4Llj3j5FbBPhgcqIH2b4boHwW96LQ9yEGP5z0HIJkNeESkCQZgqx
	kkFTKprX3h8LqYTc5Uvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBHg-0001mJ-Su; Mon, 11 May 2020 16:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBHd-0001ld-1m; Mon, 11 May 2020 16:28:04 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E269C2070B;
 Mon, 11 May 2020 16:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589214480;
 bh=dWnpFgb+Yx+pcGOYtWqzFL2thynqYWnO1OaoLx7QFcc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1r5JMwQvUG65cvK8P/9WIeAwFKoXlUIJbPRdq5VFo9X6fs8fyFnAq6eXNviydjJT
 BdYV26bfkEKLslnf5ij/wG/z7Wq+aymrnC+HEO0ILvDX9cD1O6js758TulIe5Z3jcC
 vYWXDe7w28B73UGMgccD11aG5k8fcJQv1pEq4MyU=
From: Will Deacon <will@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] arm64/crash_core: Export KERNELPACMASK in
 vmcoreinfo
Date: Mon, 11 May 2020 17:27:54 +0100
Message-Id: <158920375123.230375.8898075017057814195.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1589202116-18265-1-git-send-email-amit.kachhap@arm.com>
References: <1589202116-18265-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092802_669479_2B7D2067 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 18:31:55 +0530, Amit Daniel Kachhap wrote:
> Recently arm64 linux kernel added support for Armv8.3-A Pointer
> Authentication feature. If this feature is enabled in the kernel and the
> hardware supports address authentication then the return addresses are
> signed and stored in the stack to prevent ROP kind of attack. Kdump tool
> will now dump the kernel with signed lr values in the stack.
> 
> Any user analysis tool for this kernel dump may need the kernel pac mask
> information in vmcoreinfo to generate the correct return address for
> stacktrace purpose as well as to resolve the symbol name.
> 
> [...]

Applied to arm64 (for-next/ptr-auth), thanks!

[1/2] arm64/crash_core: Export KERNELPACMASK in vmcoreinfo
      https://git.kernel.org/arm64/c/203b1152d18c
[2/2] Documentation/vmcoreinfo: Add documentation for 'KERNELPACMASK'
      https://git.kernel.org/arm64/c/c0fc00ec6304

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
