Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F104C2E7
	for <lists+kexec@lfdr.de>; Wed, 19 Jun 2019 23:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Nu6vBR73U2dTwHttphWGT6QG0oa2ZMGzNhnvsrIdh4s=; b=FMFfM1C8QllVTvNehL9ezt3jQF
	MFQVIi/6HU+Bo3+M00DAzrFIgJ9UHoOopzxqAP7rQXTqlP64kt4KxehOUJZynFPVhY8yOlw5AJydQ
	ER/ccRx6sIarWK3m0ni3Syv80jsIlnSQXGyjC2F5iqVePAHRKwP4MiBNiaXJCMtZndgwL9lvEdURu
	AO2YgMnApoZGpk/xCJ0ZmW7GvGrnEg6FGe+iDLs84zTo/G61XloXKWgXbgkuvQXfdSK4aHMKOn7jm
	lO3rh/SOC+kGnXmUOzEpdnFANiEZSVulvgR+RZ5Uo1IW7JKTNcV9JZSy7o+tIIXyvFBrLxqwZaOs2
	KnEAlCfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdi3j-0001lx-BG; Wed, 19 Jun 2019 21:23:59 +0000
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdi3O-0001a6-Oi
 for kexec@lists.infradead.org; Wed, 19 Jun 2019 21:23:40 +0000
Received: by mail-pf1-f171.google.com with SMTP id i189so319814pfg.10
 for <kexec@lists.infradead.org>; Wed, 19 Jun 2019 14:23:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=h5Ao3cB9S/7tCUZ4ud6lKhdXu9/luXHGivc+ajaSUZM=;
 b=R3zXm+4dT7g7CoA7nLOOIyQTqzsfHUZQ7ZAY+LSLXyVLtpVVLv6R2NNw25yp3EXh93
 sGRx7vu19IUyzOyZmEG3A5VkjDtCXnpin/YHl7x4Y4G0RmE/WAFg0cAGq0r1CbEDsmh3
 OaQi3DLZK7pi31kTfziytqjvGNi5YTgLAImHTCGP0v249h94mIcikSDGCzVK3M80p54N
 RcFOGDpinhPphpJIvUsyFXBhKtnlbcfGdJ7v7Tyk9EBIspzn5I/HDOprexIKytD2rC/J
 9GkAZ0vqIF/HC+6Pn4wlOI0IU8Dvr9Ik14zOu9e4yZzoJkUjygBi3ShiD4vZnv8inbNA
 ggZg==
X-Gm-Message-State: APjAAAUutBzINQ37mloUFY4M/qfp1QB8Mgmx+6/P0mJF/5Gn4/+gPka2
 6V18vOAVzR7iX8Ugpq6NTHJUvg==
X-Google-Smtp-Source: APXvYqyj6Cfbp8/VKPj+doGb/mW9y1hTBU7vUVIYj9cLd9dPrw3lPzXd1/aKLkCKKL2YujWVYKNn8w==
X-Received: by 2002:a63:1450:: with SMTP id 16mr9910814pgu.52.1560979414817;
 Wed, 19 Jun 2019 14:23:34 -0700 (PDT)
Received: from localhost.localdomain ([182.69.193.115])
 by smtp.gmail.com with ESMTPSA id d6sm2320615pjo.32.2019.06.19.14.23.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 14:23:33 -0700 (PDT)
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Will Deacon <will.deacon@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Subject: [Query] arm64: Right approach to support Image.gz file type via
 kexec_file_load()
Message-ID: <9d54bb1e-7371-5163-69b0-0af0426ee4a0@redhat.com>
Date: Thu, 20 Jun 2019 02:53:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_142338_803088_9F0F7569 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, matthewgarrett@google.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

Since most distributions use 'make zinstall' rule inside 
'arch/arm64/boot/Makefile' (see [1] for details) to install the arm64 
Image.gz compressed file inside the boot destination directory (for e.g. 
/boot), currently we cannot use kexec_file_load() to load vmlinuz (or 
Image.gz):

# file /boot/vmlinuz
/boot/vmlinuz: gzip compressed data, was "Image", <..snip..>, max 
compression, from Unix, original size 21945120

Now, since via kexec_file_load() we pass the 'fd' of Image.gz 
(compressed file) via the following command line ...

# kexec -s -l /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname 
-r`.img --reuse-cmdline

... kernel returns -EINVAL error value, as it is not able to locate the 
magic number  =0x644d5241, which is expected in the 64-byte header of 
the decompressed kernel image (see [2] for details):

The decompressed kernel image contains a 64-byte header as follows:
<..snip..>
   u32 magic	= 0x644d5241;	/* Magic number, little endian, "ARM\x64" */
<..snip..>

I can figure out two ways to address this:

1. Add support in user-space kexec-tools (for which I have a RFC patch 
ready), which handles an 'Image.gz' being passed via kexec_file_load(), 
using an approach as follows:

a). Copy the contents of Image.gz to a temporary file.
b). Decompress (gunzip-decompress) the contents inside the temporary file.
c). Pass the 'fd' of the temporary file to the kernel space. So 
basically the kernel space still gets a decompressed kernel image to 
load via kexec_tools

This seems to have the following pros and cons, which I can think of:

Pros:
  - Changes can be handled in the user-space (kexec_tools) and no 
changes are required in kernel space for handling the 
unsigned/non-secure boot case.

Cons:
  - One obvious issue is how to handle the signed kernel Image.gz, 
because signature verification is managed inside the kernel, so handling 
a signed Image.gz would require kernel intervention eventually.
  - Passing decompressed image from user-space requires the kernel to 
read large amount of data from the user-space.

2. Add support in kernel (for which I have a RFC patch ready), which 
handles an 'Image.gz' being passed via kexec_file_load(), using an 
approach as follows:

a). Define a 'arch_kexec_kernel_image_probe' for arm64, which overrides 
the __weak definition in 'kernel/kexec_file.c'
b). Inside 'arch_kexec_kernel_image_probe' for arm64, check if we have 
been passed a  magic header  0x1f, 0x8b (\037 \213) which indicates a 
'gzip format' Image file.
b). Decompress the contents inside a buffer using a decompress_kernel() 
-> gunzip() -> inflate() logic.

This seems to have the following pros and cons, which I can think of:

Pros:
  - Handling signed Image.gz becomes easier in the kernel itself.

Cons:
  - One needs to add a decompress_kernel() -> gunzip() -> inflate() 
kind-of logic in kernel space to handle gzipp'ed image for arm64.

So, I was wondering which approach should be more suitable - fixing this 
in user-space v/s fix this in kernel-space.

Please let me know so that I can send out a RFC patch for the same.

[1]. https://github.com/torvalds/linux/blob/master/arch/arm64/boot/Makefile
[2]. https://www.kernel.org/doc/Documentation/arm64/booting.txt

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
