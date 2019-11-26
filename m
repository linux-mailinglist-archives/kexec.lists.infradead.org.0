Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7650109FBB
	for <lists+kexec@lfdr.de>; Tue, 26 Nov 2019 15:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f5sx6qOFgnt7+HUc1ddEw4LmyYgiv2IEfaiMdJQ7N6M=; b=O5ImPAig2bWlISm80cLDQ2pST0
	0PCesJCCqDPVR7TrMBe63JFnS939id74RyDEcghxFNr/c0dwcjB7jIQ2sDkRRX3cWlgwDWhVbaqf9
	vWwT8bYn63OWzk+hIb7BogeGTmYGOg4InF530d8YsxnUj8MShkv3+hwG6u2yZZaQl4UCQgpGVLBmw
	i6qnMyyZDIj0R1AZE4/BPpBBM2BLKYrghrgneDSvWZJ/gOvCRdrmg8N+n1t1PUcor22ZA+n5jWwfv
	Ej8jdbIniaur2EJnPdEsOwdm3hHslEgu2Dm5VFaZCHCBl4AZnDu6E81YMI7oc5r73sxNKmbdQ17CY
	i0MTnNwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbPz-0000lF-Ir; Tue, 26 Nov 2019 14:02:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbPw-0000Js-LH
 for kexec@lists.infradead.org; Tue, 26 Nov 2019 14:02:14 +0000
Received: by mail-io1-xd42.google.com with SMTP id x21so20681968ior.2
 for <kexec@lists.infradead.org>; Tue, 26 Nov 2019 06:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=14oazKANcoQztiMb6nrbYx8HDnWcE05MWcBHz7fbaAo=;
 b=bAw9bFtmk5Y9Coz8SYSS2ElXHTaltcaQs7uhpmJWhd7yx+IihI0gNzfDJo3ZDaTaiH
 UltXbXIWyeRC+C+pLAaZ1cuxHKg5HkLxgRVGhNN23yF8H1U7cLNyh9xdrCcY39rSIfD8
 ZyHD2irrA2otYm5O82jdv3XA4L3vYC32fn30usRA6DwETx/fP24zuwDlF4je5nwSvvzS
 AlrtncYI9ED6cXmHlnELPtab3N8hahCYSkMj4m04dsB38ohmSaV/I+0rTdnIKx6Eo1e2
 CKtKlC/BrlYB2tM2nB4z2FxegXiJnPcaq++1h7QNH4X02i9cfu146QuvtiLDzvqzOUh3
 lnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=14oazKANcoQztiMb6nrbYx8HDnWcE05MWcBHz7fbaAo=;
 b=XrVQDZgPpUZdEUaVz2CrUFLnQvfQN5TLn7+Fda0rT0+DZUVcyv62MoYXHbZVvA+3L3
 2nui3Dti/lFYJxpmq0dVP36GZPPkpleqxTJNCiATtM2ywqetYwdMpxG/5ZTjAEdsWUOZ
 kNC0A/qouwpj5UKGfZAQqEs+ilGLdEpX1YAnGDgmg1hitPZTG2ewz4fYf4ygadfJHyQG
 NZE1N+EWRL9Wg58oyFMPR8eEmqAe3/FSeSbbNg6erJ41L/1S3Mh1aNsdekCeORbRhSVD
 znNJbiHh3TXBl6mDwealhqVCRsyHD+5E7cQuBiZTP+FvZ6gnvLksRQNhBd32Mj/p0NAz
 Z1lQ==
X-Gm-Message-State: APjAAAVqvLY7NGEDJ9c1ZCViZ2gs3rJ0KOSeQviOLngo5oAw/oPrKXBx
 QIINRxjcZos1UE7BN4lISzpJFzrZTxniw040Lj2ukux/
X-Google-Smtp-Source: APXvYqz+rZmLITxWlXSr5LlqLO5zfbFdtlXf5OXbMJqo02hJOKxRzuHQt5g0PE5viAihSf9JbFc0FCImkWTi5XD9TTk=
X-Received: by 2002:a02:c989:: with SMTP id b9mr32638902jap.59.1574776930530; 
 Tue, 26 Nov 2019 06:02:10 -0800 (PST)
MIME-Version: 1.0
References: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
In-Reply-To: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 26 Nov 2019 19:31:59 +0530
Message-ID: <CAJ2QiJ+RhQ_XjTZ_qEkx1Wuf44oSZe1sGj2poLfk5XvbU-JX+A@mail.gmail.com>
Subject: Re: kexec-tools/vmcore-demsg: No program header covering vaddr
 0xffff000be7a00000found kexec bug?
To: kexec mailing list <kexec@lists.infradead.org>, 
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_060212_736065_312A1C3C 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Nov 26, 2019 at 1:04 PM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Hi All,
>
> I am facing issue below error with latest kexec-tools/vmcore-demsg tools.
>
> $ ./build/sbin/vmcore-dmesg /proc/vmcore
> No program header covering vaddr 0xffff000be7a00000found kexec bug?
>
> I am testing on AARM64 platform with following git repos.
> A) kexec tools:
> https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> top commit: bd077966e2b9041c (kexec-tools: Fix conversion overflow
> when compiling on 32-bit platforms)
>
> B) Linux:git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> top commit: af42d3466bdc8f3980 (Linux 5.4-rc8)
>
> I am seeing similar issue in past also in couple of discussions. has
> it not fixed earlier or it keep arises with time to time
>

I did further analysis and with below changes kexec-tools/vmcore-demsg
working fine

diff --git a/kexec/arch/arm64/crashdump-arm64.c
b/kexec/arch/arm64/crashdump-arm64.c
index 4fd7aa8..1c28b06 100644
--- a/kexec/arch/arm64/crashdump-arm64.c
+++ b/kexec/arch/arm64/crashdump-arm64.c
@@ -58,6 +58,8 @@ static uint64_t get_kernel_page_offset(void)
 {
        int i;

+       return 0xffff000000000000;
        if (elf_info.kern_vaddr_start == UINT64_MAX)
                return UINT64_MAX;

After patch 14c127c957c1 ("arm64: mm: Flip kernel VA space") in Linux,
the PAGE_OFFSET address has been moved to bottom instead of middle in
kernel virtual address space. looks like existing code still assumes
PAGE_OFFSET in middle.

A proper fix is required.  Let me work on this.

--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
