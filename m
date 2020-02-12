Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4666D15B147
	for <lists+kexec@lfdr.de>; Wed, 12 Feb 2020 20:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdrGNXhqIuCYwWLcTcGMTpsSpFbTMl3N7JejDgmCxaI=; b=BiMPCd3iNt+W6h
	JRdIhh8r/Qgl6/w04+7SN4ztXcxpp+hEMx2YvXg9o6r8zD6WFEPemzXhZg7XFTqa0Wir2Irn6jUzt
	dJ3xIWDfl92VkpQCC73+Dh7zVX8Av0oqlX0CzfDJT7M5fTpfvgCikQEDjpv5qUEGd4iXap/hyWC3+
	BAWVhwfMi466tQPk8y8S6pwoOfCP1C/A3PlL82yK6keZBXF5pzr4edMFqtTK/ZbvzpsusYPDQGRSV
	HuP6QEnQ45QLC/8u4l4nd7peHJN0/1hhr1fyHUVVtTlE1jfpfips1MOWYE7XZr7Bv1f8EWfPLboCJ
	N4Y3nYeLyOVAASewLgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xyW-00013e-TP; Wed, 12 Feb 2020 19:47:08 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xyT-000126-18
 for kexec@lists.infradead.org; Wed, 12 Feb 2020 19:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581536822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yCnE9QmCOCTZqpbu8778KLidpm4AxD5HKCFf0cQlmYk=;
 b=ggB6nAaHMg1GdPHiioVzgU1vHOdWMoOQshUdAoQ83jOiiarmGHp4On4L7asJLvYpo/MW69
 caMKZ5KWJ7Go4YopZRDaFEHY/ggSps4qlk4RNUL5I2zUUaHrAeYiIoX9gD+os1/Pd94+bE
 +1lO2wABpzEImLHeuP+aKxPBnxcnKIY=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-ukR3UMfyNnGTustlweZQZg-1; Wed, 12 Feb 2020 14:46:56 -0500
Received: by mail-qt1-f200.google.com with SMTP id n4so2017939qtv.5
 for <kexec@lists.infradead.org>; Wed, 12 Feb 2020 11:46:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LTuZQcJuCy9b73elI3peDGYhgJZCO43O/UBp6dk1FH4=;
 b=BAd2uhEQPFZitAsjgCARDkriTGtktfK9HW2jRWDOXBKoVvgVKHCdKGYyQqoLjoD+dO
 3MmqOMrw7StRd4DAcYxJf4D2Tc+fVOqtlyEWUvN/p55J6veTB8stBVaChT6CN8YTfKwV
 bA3zUy4U/D0zt76qfO+DRLobe7Mbre+VbX9bnYnMr2wkaMLRvkCEhs9jbyyGusRaSLdM
 wPx9ur/0RWe7xxTJcs1hJPI28MHuysPulFITvGUX+CRN18d05thQLGg6E+fa6keg9TGj
 legYTbZHE0farqNE9ShvtXl87hUx2+r/xuHR2Qq+aUplDdvIWWqobUGmDxenRjHhB0yp
 rcUQ==
X-Gm-Message-State: APjAAAX7WVBGXmBC48iTBJfPPFZ2NWzk2hCrrPiJEyV2qDVjKY4Iaqx8
 PQhJkPKMXGoWzoKhbhGZiG0YVZhS7PTAJ50FvmFdg2LnRMih2PfStMEVYl1dQeyrJwol8craui4
 9o2sFmtpEABPBw1eRIk/BtlXyqc4zbOKojYO0
X-Received: by 2002:a37:989:: with SMTP id 131mr12053710qkj.424.1581536815450; 
 Wed, 12 Feb 2020 11:46:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqzIylbNv+Mor0IwYEXrbRq73VMDHUOVp/JFc7ebLwaoInXbpABig8QLbc6kg5+hZNS/51BvqvhtR87Xm/AVT/I=
X-Received: by 2002:a37:989:: with SMTP id 131mr12053695qkj.424.1581536815149; 
 Wed, 12 Feb 2020 11:46:55 -0800 (PST)
MIME-Version: 1.0
References: <20200212125658.9654-1-lijiang@redhat.com>
In-Reply-To: <20200212125658.9654-1-lijiang@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 13 Feb 2020 01:16:42 +0530
Message-ID: <CACi5LpPMGut9KLh6_VzoF-o8q9_O11dasXU1YcVKmxiAj=EdBA@mail.gmail.com>
Subject: Re: [PATCH] kexec: support parsing the string "Reserved" to get the
 correct e820 reserved region
To: Lianbo Jiang <lijiang@redhat.com>
X-MC-Unique: ukR3UMfyNnGTustlweZQZg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_114705_150371_34EBACD8 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Thanks for the patch.

On Wed, Feb 12, 2020 at 6:27 PM Lianbo Jiang <lijiang@redhat.com> wrote:
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
>  kexec/arch/i386/kexec-x86-common.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> index 61ea19380ab2..86bcc8c0677e 100644
> --- a/kexec/arch/i386/kexec-x86-common.c
> +++ b/kexec/arch/i386/kexec-x86-common.c
> @@ -93,6 +93,9 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
>                 else if (memcmp(str, "reserved\n", 9) == 0) {
>                         type = RANGE_RESERVED;
>                 }
> +               else if (memcmp(str, "Reserved\n", 9) == 0) {
> +                       type = RANGE_RESERVED;
> +               }

Instead of introducing another 'else-if' case here, can we use
strncasecmp() instead.

It  compares the two input strings (say s1 and s2), ignoring the case
of the characters. Also it only compares the first n bytes of s1 (so
the format is the same as memcmp).

In this way, we can be sure to future-proof the kexec-tools code check
from future notation of the "Reserved" field in terms of the case used
to denote the "Reserved" string.

What's your view on the same?

Regards,
Bhupesh

>                 else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
>                         type = RANGE_ACPI;
>                 }
> --
> 2.17.1
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
