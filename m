Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8EC1FC720
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 09:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BkPE1Hetoh1zjNktcIP5T8u3/CrEW/DPXE5MAgrevk=; b=Kvdv1SBf4c/Cif
	h/7RRGHQpE5+UiEHgskdk9F84v4RcqD0V5j5xd6ox4HSuxkXTDhKAiz3E/E22knNltBXnrWBUlsnX
	rFGOpyG2a4iPy84RMEnHdeTalse5F1qcHyBQQM36h5cAgsdQVmX1pGbTfCKuvjWt1LGH/hDv4BzwE
	eQ+5G1mViZ0cxs+YtcrYraKXUTrS+weuDKP5c/8aZut/Ac/4xaEn5CUizwi/Yybpw/nu0w0dpt37X
	jqkzW7O70da6xU0qAJBbqffVwDf3LuH139N+A9b44tCchzwpZlvwwEWl57T0aHgDIkGXLgam4sYOu
	cmfZ4gpiBRlts+DHTC6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSMC-0005ur-J0; Wed, 17 Jun 2020 07:19:36 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSM9-0005t8-HD
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 07:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592378371;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3nMV9djeblDmged7ZCD4/mVZAEJXWFVc8kGD88PHqFo=;
 b=AaeXujFwZJsQuIFjAIGIE8utKsdZh2iuOC9Ysf7JHSOhAOVU4eRSDqxBP88gQX3TCtcg52
 p4fKU5D97WDMxCcdL6aY880EeDsqc2+VHTW7xZHZURZ5WPDp9E/INEjJStyCQO2nJE0Njn
 T4D0VxXEbFeUdtzEDpuAFabEt/GFSXw=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-mJhXsZtkPQup_kS1JGZm8w-1; Wed, 17 Jun 2020 03:19:29 -0400
X-MC-Unique: mJhXsZtkPQup_kS1JGZm8w-1
Received: by mail-qv1-f72.google.com with SMTP id 59so964815qvb.4
 for <kexec@lists.infradead.org>; Wed, 17 Jun 2020 00:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3nMV9djeblDmged7ZCD4/mVZAEJXWFVc8kGD88PHqFo=;
 b=c9S561fr3noSgBRQyus8mPGYhTuNYDKUqBsMG7F/XILdYz7KxZglk36GvRm7VZfnqb
 J0RnO1XV7ISLeThXjowWt1T7VR49kU5lmMB239a+QY6/4CIp4Gb1yzZW7iNOGph+28La
 Xh/YSRw5rtCIiTHXPXg2I4Qo4zON7iChYzUiIs8u9PHawNSN/cXsnaG2m0wfDOpV/4Gu
 tOcfqWlhIKazyt/vcOcJRIzs+V0km+d1wTZMqwfd7zQEFNp2qMh2VKIBz8WU7vIYAJ/X
 usJLpwk3d4du0/z1BGSeR5b8Lk/dXWUjhScnRhJgoxmOuBBSYGUjisIXwDjKOI4/8yIq
 8+uQ==
X-Gm-Message-State: AOAM532RnV/f3VL2F8vsX9zUiyXQqqzYpeU3s/r0eaz3dJl4ycJx5+Bi
 8Ti2yxkKjlAKNLQWoyNQSTTH1L1ZfI8Dkm56iKodl3aXVVcdKleXRSDW0pTh9PPN7eRqibX9Smf
 Sf+pnSjU3UJGJipzs8GpoO6YHSL/goVjyFGJy
X-Received: by 2002:a0c:f447:: with SMTP id h7mr6137901qvm.198.1592378369272; 
 Wed, 17 Jun 2020 00:19:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvchcV7ykOkqvmXRBx3vLMt5H8uHLQqYIpvbyQayYOCEJvmgC8z5JySsdDM7CcgG0ZOJ9IUPcDzj4yomcTxJw=
X-Received: by 2002:a0c:f447:: with SMTP id h7mr6137883qvm.198.1592378368819; 
 Wed, 17 Jun 2020 00:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200616033320.2553-1-xulin.sun@windriver.com>
In-Reply-To: <20200616033320.2553-1-xulin.sun@windriver.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 17 Jun 2020 12:49:16 +0530
Message-ID: <CACi5LpOH8FvTF+iybJ-BionyRiKaz4DC80K2U0_XxEerhcHs6g@mail.gmail.com>
Subject: Re: [PATCH] arm64: continue loading even if kaslr-seed is not wiped
 to zero
To: Xulin Sun <xulin.sun@windriver.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_001933_648274_241199E1 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: xulinsun@gmail.com, Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Xunlin,

On Tue, Jun 16, 2020 at 9:03 AM Xulin Sun <xulin.sun@windriver.com> wrote:
>
> The commit c3f043241a866a (arm64: Add support to supply 'kaslr-seed' to secondary kernel)
> add kaslr-seed support. And consider the primary kernel reads the 'kaslr-seed'
> and wipes it to 0. But in the situation, 'CONFIG_RANDOMIZE_BASE' was not set to
> y in the primary kernel and ATF firmware has set the 'kaslr-seed' dtb property
> with non-zero, Thus will return error.
>
> So in the above case, continue loading the segments with no kaslr
> supported situation.
>
> Signed-off-by: Xulin Sun <xulin.sun@windriver.com>
> ---
>  kexec/arch/arm64/kexec-arm64.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
> index 2992bce..540f4d7 100644
> --- a/kexec/arch/arm64/kexec-arm64.c
> +++ b/kexec/arch/arm64/kexec-arm64.c
> @@ -506,8 +506,7 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
>                 if (kaslr_seed != 0) {
>                         dbgprintf("%s: kaslr-seed is not wiped to 0.\n",
>                                         __func__);
> -                       result = -EINVAL;
> -                       goto on_error;
> +                       goto unable_kaslr;
>                 }
>
>                 /*
> @@ -550,6 +549,7 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
>                 }
>         }
>
> +unable_kaslr:
>         if (on_crash) {
>                 /* add linux,elfcorehdr */
>                 nodeoffset = fdt_path_offset(new_buf, "/chosen");
> --
> 2.17.1

Sorry, but this seems like an ATF issue which you are trying to fix in
kexec-tools.
See 'Documentation/devicetree/bindings/chosen.txt' for the details of
the 'kaslr-seed' property:

kaslr-seed
-----------

This property is used when booting with CONFIG_RANDOMIZE_BASE as the
entropy used to randomize the kernel image base address location. Since
it is used directly, this value is intended only for KASLR, and should
not be used for other purposes (as it may leak information about KASLR
offsets). It is parsed as a u64 value, e.g.

/ {
    chosen {
        kaslr-seed = <0xfeedbeef 0xc0def00d>;
    };
};

So, if CONFIG_RANDOMIZE_BASE (or kaslr) is disabled, this value should
not be available in the patched DTB read from the kernel, as otherwise
we have a possible security vulnerability as we are leaking out the
kernel text address which can be used by snooping applications to
inject malicious code in the kernel.

For example on my qualcomm arm64 platform, if CONFIG_RANDOMIZE_BASE is
set to n, user-space tools like 'dtc' are not able to find the
'kaslr-seed' property in the /chosen node (and same is the case with
kexec-tools):

# dtc -I dtb -O dts /sys/firmware/fdt | grep -A 10 -i chosen
    chosen {
   ... no 'kaslr-seed' node
}

Also confirm that the kernel symbol base address is not randomized on
successive reboots (in this case) via:
# cat /proc/kallsyms

Whereas, if I boot the kernel with CONFIG_RANDOMIZE_BASE (or kaslr)
enabled, I can see that the 'kaslr-seed' property is wiped to '0' (as
expected by the kernel') and can be seen in the output of:

# dtc -I dtb -O dts /sys/firmware/fdt | grep -A 10 -i chosen
    chosen {
    kaslr-seed = <0x0 0x0>
}

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
