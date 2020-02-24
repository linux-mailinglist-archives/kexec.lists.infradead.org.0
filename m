Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E759169EBE
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 07:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aK90xnz0doaDRoKP5HVQO8EWxyQtLF6USY0TJj6Hvas=; b=Cjl0D9+bxI8F35
	vc63FmZM8oMpGCTKHCgImIDqiQcpHQxcCBJ+CB8kI5nw18nQfH4sUC/FzUe5nymYsTWbp3alM/LqH
	Z9jB5iTL/dTUAcapUgQ36xXUYXTsxspzannfQWj9DlcpljkffL+iK76I8y0hRwtGEVVGgny/D3ljc
	n0+e9jh+/SvnOAF9RmU9NMjPGvVkQtazozqlBAhf+dWrNGitN24HDOVLSKYtxEI16J1NuX2SKrVeh
	YEbAX+rG/vbhUuDnKxddjKSUaXjCJFU/q4DVkx5UIbu7rjdsts4pHY9F/AMX2C36DSUVJiB0e5/vn
	1cF5ZJ0WGYQGWYoEQVxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67XG-0003wE-GU; Mon, 24 Feb 2020 06:48:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67XD-0003vi-BP
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 06:48:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582526886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kZhjP7cSSJ+FS3LEqWaOMW7I2u3rilDNMRycqRBG1Bw=;
 b=beYraCuAPt/xhuxCjjPKUKh0nkxlElpN9HsxsKzL0m1UWdmBJaw5oPCMK0gh8/VADhI35M
 JxEs2scLMcgTy5Kj9P6RtkJVzJxjrK+ugCzYR2WcxspniNSXl+yxMt88k7E7eesNqtnaX1
 RuhSfNvqvVs95gsIC6fy9ddhnfYpRpE=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-Y-5woZ6cO96jhPx9DUNx5Q-1; Mon, 24 Feb 2020 01:48:04 -0500
X-MC-Unique: Y-5woZ6cO96jhPx9DUNx5Q-1
Received: by mail-wm1-f71.google.com with SMTP id d4so2103435wmd.7
 for <kexec@lists.infradead.org>; Sun, 23 Feb 2020 22:48:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Or1Qk+07MA0+B/xJLvQWHwKrKsk3ouMBwuwa/PUbzwA=;
 b=QCggpMZmeQvALUv/qv90MNDWeDV55/ec0uTli0QKQQGxj5dMwgX7Df9ueOrKKjQDb6
 CF6CG7y4vmk0sJxsmv4KOFRNBXeHsF15C79cysxGAaScVEhtB3+fzRSMnNUeFGC/HIF0
 09Y0aMOcwr2MytG8F70rXP6MdUoTZvDQwM7CfcmsgMzQaCHUoJGeswW5ICrOWMwUxf+I
 xz/sKRkFU8I4cfr7GNe5Y6qLnO2C0n8ksM18KIJY2LdU0pdQuf/94b4wUmwpceKjTljK
 OZB2Ai3OSKKV1T5/skMGIb3v3FwkYz7jpXoLsGX+Cj2WvFWPdEJzcXwKYe+7upA/Z2oz
 xOxA==
X-Gm-Message-State: APjAAAURYup688FyQ502yxNEZgbTT0J9C45jjJhPsg+OjFDs9DpJ5r4a
 1qIO82EAha0nTzjOvUOrT5YlIGF2yqXjWoQZfX1j6O3uNf6dK786NVjQwHyDBSbeRlX0QmRwie5
 rzlpvEbQBSd7/M+CaNJceyDgLsLCWBW+gRxQq
X-Received: by 2002:a1c:9602:: with SMTP id y2mr19916611wmd.23.1582526882401; 
 Sun, 23 Feb 2020 22:48:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqxJeOTWzd7d8KiqXs5APWIkA18p2fEfNDAOr+uqo4G8KmcpWChb9nRkhe+uyFGUGaqvPXkynwTN+AaG10EQ/Dk=
X-Received: by 2002:a1c:9602:: with SMTP id y2mr19916582wmd.23.1582526882112; 
 Sun, 23 Feb 2020 22:48:02 -0800 (PST)
MIME-Version: 1.0
References: <20200224063655.9890-1-lijiang@redhat.com>
In-Reply-To: <20200224063655.9890-1-lijiang@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 24 Feb 2020 12:17:50 +0530
Message-ID: <CACi5LpMDGg9JzB7pWY7KdUoV3aFa26Mp8qHR9M6uuEbfhvPcVg@mail.gmail.com>
Subject: Re: [PATCH v2] kexec: support parsing the string "Reserved" to get
 the correct e820 reserved region
To: Lianbo Jiang <lijiang@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_224807_466390_C85AF27F 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dave Young <dyoung@redhat.com>, Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Lianbo,

On Mon, Feb 24, 2020 at 12:07 PM Lianbo Jiang <lijiang@redhat.com> wrote:
>
> When loading kernel and initramfs for kexec, kexec-tools could get the
> e820 reserved region from "/proc/iomem" in order to rebuild the e820
> ranges for kexec kernel, but there may be the string "Reserved" in the
> "/proc/iomem", which caused the failure of parsing. For example:
>
>  #cat /proc/iomem|grep -i reserved
> 00000000-00000fff : Reserved
> 7f338000-7f34dfff : Reserved
> 7f3cd000-8fffffff : Reserved
> f17f0000-f17f1fff : Reserved
> fe000000-ffffffff : Reserved
>
> Currently, kexec-tools can not handle the above case because the memcmp()
> is case sensitive when comparing the string.
>
> So, let's fix this corner and make sure that the string "reserved" and
> "Reserved" in the "/proc/iomem" are both parsed appropriately.
>
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
> Note:
> Please follow up this commit below about kdump fix.
> 1ac3e4a57000 ("kdump: fix an error that can not parse the e820 reserved region")
>
> Changes since v1:
> [1] use strncasecmp() instead of introducing another 'else-if'(
> suggested by Bhupesh)
>
>  kexec/arch/i386/kexec-x86-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> index 61ea19380ab2..9303704a0714 100644
> --- a/kexec/arch/i386/kexec-x86-common.c
> +++ b/kexec/arch/i386/kexec-x86-common.c
> @@ -90,7 +90,7 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
>                 if (memcmp(str, "System RAM\n", 11) == 0) {
>                         type = RANGE_RAM;
>                 }
> -               else if (memcmp(str, "reserved\n", 9) == 0) {
> +               else if (strncasecmp(str, "reserved\n", 9) == 0) {
>                         type = RANGE_RESERVED;
>                 }
>                 else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
> --
> 2.17.1
>

Thanks for the changes. V2 seems fine to me, so:

Acked-by: Bhupesh Sharma <bhsharma@redhat.com>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
