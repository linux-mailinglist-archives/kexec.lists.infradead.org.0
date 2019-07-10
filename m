Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE64E643D4
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 10:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B9jvO6JwtGo8KD+pmPoO7aSILxoykNWLPdSyAYx8zc4=; b=RMsP34pKlnl0n4
	t6CQH8kFJtuTIysWg86I7aMSgZxg+m8mSyYHvuIHjDMROZSHz+g0KnvYkxXNl2BrG8G8VdnhfpnVL
	zZVp3EyKhTNr+PLxQ/7Vqepk2F4vyNqPBnq4dXQpI0SX6rg9LPWfrL/mvxTR1IsKGS3ic3+i8Xfg2
	xQPHK7urUw2VtBiLZ/YK6ckdSxbQNmhvvcrNZrDDAnSoSWZSf6caL79vhMEqwRTiiKOUg+4Kn/UF+
	uUuxF/slLDU3epOFMrPnd6to/xTYCdTDhlCN9linV9INY+b+o413R19voh3nTqDbXD9u0DKWq2hRE
	mImbYY+5g5OXlemPmDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8NE-0002G7-8Y; Wed, 10 Jul 2019 08:54:48 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8N9-0002E7-Fu
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 08:54:45 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D18D625B7D5
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 18:54:41 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id C92A3940361; Wed, 10 Jul 2019 10:54:39 +0200 (CEST)
Date: Wed, 10 Jul 2019 10:54:39 +0200
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: [ANNOUNCE] kexec-tools 2.0.20-rc1
Message-ID: <20190710085439.dgrkfc3zrdszmei5@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_015443_676339_438F3D34 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 3.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

Hi all,

I am happy to announce the release of kexec-tools 2.0.20-rc1.

This is an incremental feature pre-release.

So long as no serious problems arise I intend to release kexec-tools 2.0.20
in a weeks time. Testing of 2.0.20-rc1 would be greatly appreciated.

I do not have any outstanding changes for 2.0.20 at this time.
And I would like to only accept bug fixes at this time and take
features patches once 2.0.20 has been released.

The pre-release can be downloaded from kernel.org:

	https://kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.20-rc1.tar.xz
	https://kernel.org/pub/linux/utils/kernel/kexec/

I have also tagged it in git:

	https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git

Thanks to everyone who has contributed to kexec.


For reference the changes since v2.0.19 are:

ffdc7feceea3 kexec-tools 2.0.20-rc1
d9cd81a39b59 x86: Include kexec-mb2-x86.c and multiboot2.h in distribution
7018e436cd34 x86: re-order includes to avoid duplicate struct e820entry
22a2ed55132e x86: Support multiboot2 images
d6bc88c06962 elf: Support ELF loading with relocation
40805e393b2f crashdump/x86: Use new introduce helper for getting RSDP
b071fc084bda x86: Always try to fill acpi_rsdp_addr in boot params
cedeee0a3007 x86: Introduce helpers for getting RSDP address
402351390f31 x86: Update boot parameters defination
c072bd13abbe x86: Find mounts by FS type, not name
23aaa44614a0 x86: Check /proc/mounts before mtab for mounts
eff53089523c xen: Avoid overlapping segments in low memory
fb5a8792e6e4 x86: Introduce a new option --reuse-video-type
3757ef630b72 kexec-tools 2.0.19.git

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
