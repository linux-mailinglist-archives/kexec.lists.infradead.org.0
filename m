Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7DA1F1421
	for <lists+kexec@lfdr.de>; Mon,  8 Jun 2020 10:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHGr2ediXoj05QfO4wJev2d6/r+WC5G3PAt5gTXjLEg=; b=JQvEILPxyC/1H2
	bxhm1tmIw1BeLVBNzM+KluSAlHBnMc8WPnclbsEf26w2TjvaA+4DLLqUlPEuTYZKFijliVYkQFH6b
	1u7kzLkG3IY1/MZC9TsKbVD4+fB0jSdJOC53aYv2zednN1Api6xIj4TWiDgNUWdVpb7dyBajwj6fk
	QUt7Q50S/PWNTAbwWUeKWyRufEOgi22BesZk02iv+71EYHx9DUy7V3QRuOFlA7bqCmDnpiK1VNiID
	TPuVWW5ZXv+Qg3uAmaxlhxbJwg5kY+nx/8Ejlh1n8ho49fiDStTBj80TatlnjiGXhUbD2VGbxR3/u
	MItW7Zm1oyLV1JPHiJ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCpA-0005Ib-FZ; Mon, 08 Jun 2020 08:08:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCp6-0005Hm-QE
 for kexec@lists.infradead.org; Mon, 08 Jun 2020 08:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591603677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZbN71+DLOQDLMNnWvQpaN1N2Hub7a1AniDuqT74J44I=;
 b=JRmAh+ycXt69Cfk7HyNItOR+waL1agt4DbX141wIvqhgFBgPW5r+7SsJlqqA8DVF87pxzo
 mZkULe6iH+GTKui1TPJfM1Vx6sqF4NY41zGwWPt3++7gWxiUQVgRN59wA/EJddRwW2LtAY
 7f2cLtDcHxf8+jLa2v9runTSQpPbzzc=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-L-0Yk4s-P1qYes1KhQwjDQ-1; Mon, 08 Jun 2020 04:07:56 -0400
X-MC-Unique: L-0Yk4s-P1qYes1KhQwjDQ-1
Received: by mail-qk1-f199.google.com with SMTP id w14so13706819qkb.0
 for <kexec@lists.infradead.org>; Mon, 08 Jun 2020 01:07:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZbN71+DLOQDLMNnWvQpaN1N2Hub7a1AniDuqT74J44I=;
 b=DlJI7UTVUshy9qiGV5oduhNGUVUiZX6YPukRdagNSkbVqqa4HYHWjSvFcrAmpmkTes
 TZpT2yIFIjQX5a8kzkarhWOwJFqpNklpf6T8HOido1pQnpM0/9IDwJ580M49bHNz2T+h
 1qt4vSLaAriu6Cm+6rxDhGT7Sz6DkPaikx4gp39GGAEsWmfrsdXlVBHUKSpfWs0sc1ei
 VMf2v3Z42Xyo/96kgbEthkIu85zQuJdrZw741VtZtYJw2uS2/3nNxhVzidq4vWllizFA
 TOqwMBsuSmLe3u+ql+RvR3T/kQ0P1ZcTg0AuLf+ShP7ypI01xydPHtaayPlec2Ti3Jz2
 PJKA==
X-Gm-Message-State: AOAM532UIT3nHCuXUbJ+lneFfLqCehAI2LSvqREser48WaH7/Y5qPjUm
 NOfVAwEB7fkzsb5MqfW5E6JYb7Z+YuMr1GT8k/jC3Q249GiMBiR0vgEBpAd4qDrGd3Xj9wAx8Ga
 aI7ZvVWIL6aa7O/aG8qJ1lDIUC/4oJyyn6ahE
X-Received: by 2002:ad4:4d8f:: with SMTP id
 cv15mr21509532qvb.195.1591603675834; 
 Mon, 08 Jun 2020 01:07:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWj54BrhXlaXyGur0GgPLTutUYY8qIY0pbnzZPMB2tmAwlSKjBWtONJhERHg/zCg3vBVkCjREgic7BjZKcplA=
X-Received: by 2002:ad4:4d8f:: with SMTP id
 cv15mr21509514qvb.195.1591603675583; 
 Mon, 08 Jun 2020 01:07:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200605194642.62278-1-pasha.tatashin@soleen.com>
In-Reply-To: <20200605194642.62278-1-pasha.tatashin@soleen.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 8 Jun 2020 13:37:42 +0530
Message-ID: <CACi5LpNvBaAVibj_XpLm1=zk8oUDXpWGZyZJ=TLBkimoUoiD8A@mail.gmail.com>
Subject: Re: [PATCH] kexec: dump kmessage before machine_kexec
To: Pavel Tatashin <pasha.tatashin@soleen.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_010800_926982_AEBD63DC 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: sashal@kernel.org, pmladek@suse.com, "Luck, Tony" <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, anton@enomsg.org,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Biederman <ebiederm@xmission.com>, ccross@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On Sat, Jun 6, 2020 at 1:16 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> kmsg_dump(KMSG_DUMP_SHUTDOWN) is called before
> machine_restart(), machine_halt(), machine_power_off(), the only one that
> is missing is  machine_kexec().
>
> The dmesg output that it contains can be used to study the shutdown
> performance of both kernel and systemd during kexec reboot.
>
> Here is example of dmesg data collected after kexec:
>
> root@dplat-cp22:~# cat /sys/fs/pstore/dmesg-ramoops-0 | tail
> ...
> <6>[   70.914592] psci: CPU3 killed (polled 0 ms)
> <5>[   70.915705] CPU4: shutdown
> <6>[   70.916643] psci: CPU4 killed (polled 4 ms)
> <5>[   70.917715] CPU5: shutdown
> <6>[   70.918725] psci: CPU5 killed (polled 0 ms)
> <5>[   70.919704] CPU6: shutdown
> <6>[   70.920726] psci: CPU6 killed (polled 4 ms)
> <5>[   70.921642] CPU7: shutdown
> <6>[   70.922650] psci: CPU7 killed (polled 0 ms)
>
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  kernel/kexec_core.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index c19c0dad1ebe..50027f759a97 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -37,6 +37,7 @@
>  #include <linux/compiler.h>
>  #include <linux/hugetlb.h>
>  #include <linux/frame.h>
> +#include <linux/kmsg_dump.h>
>
>  #include <asm/page.h>
>  #include <asm/sections.h>
> @@ -1181,6 +1182,7 @@ int kernel_kexec(void)
>                 machine_shutdown();
>         }
>
> +       kmsg_dump(KMSG_DUMP_SHUTDOWN);
>         machine_kexec(kexec_image);
>
>  #ifdef CONFIG_KEXEC_JUMP
> --
> 2.25.1

LGTM, so:

Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
