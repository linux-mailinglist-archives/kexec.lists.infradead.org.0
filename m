Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C747443E
	for <lists+kexec@lfdr.de>; Thu, 25 Jul 2019 06:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrZyyMf8XtH/eSMpBhLrGyWMjURWf7uBvPhYfcMBkkk=; b=YRuAbXlYRXgwoh
	TcvykzgZqc1R2HHvOxtSJqMaH3T/EFvzeGhnQEvn1EUo4UVCVgegNngSBjNwocamZbOeUNSP/677v
	D1OPb4Xjnwxg+KPPJywYwxZkiP24GHznKgw8247N3uaPpI5iotHR150ZhNBpApvD9Ed+lIR5n225g
	H61jvybHAMaJic9G8q46h834EpJ6nC/TVG6158+AlMqHub/wBXYtRcV2FSEvQfv19kbilNVGohPYZ
	1/2CZDkJ29FQEZfWfE4JmzxQL/wgOtNOs6abFDbP2eLJuHtGzrE/QmlmHB1jKEJXLWwUet7WbQDCT
	SKdtYJ20q8hZ5eoxMK6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqVFr-0005RF-AS; Thu, 25 Jul 2019 04:21:23 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqVFn-0005Qh-2Z
 for kexec@lists.infradead.org; Thu, 25 Jul 2019 04:21:20 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id B2CEF25BE09
 for <kexec@lists.infradead.org>; Thu, 25 Jul 2019 14:21:13 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 53D5CE2209B; Thu, 25 Jul 2019 06:21:10 +0200 (CEST)
Date: Thu, 25 Jul 2019 06:21:10 +0200
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: [ANNOUNCE] kexec-tools 2.0.20
Message-ID: <20190725042110.pvego7gbnu7czcht@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_212119_260745_927D203C 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 2.7 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

I am happy to announce the release of kexec-tools 2.0.20.

This is a feature release coinciding with the release of v5.2
of the Linux Kernel.

This release can be downloaded from kernel.org:

	http://kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.20.tar.xz
	http://kernel.org/pub/linux/utils/kernel/kexec/

It is also tagged it in git:

	git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git

Thanks to everyone who has contributed to kexec.

Commits since v2.0.19:

49b93b9afc24 kexec-tools 2.0.20
419716b151e8 kexec-tools 2.0.20-rc2
f4c1caaa97a2 kexec/arm64: Add support for handling zlib compressed (Image.gz) image
0e709571bfe7 kexec/kexec-zlib.h: Add 'is_zlib_file()' helper function
6ef59c03bf2c kexec-uImage-arm64.c: Fix return value of uImage_arm64_probe()
019d8258f15c kexec/kexec.c: Add the missing close() for fd used for kexec_file_load()
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
