Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9551146D9
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 19:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiU46EW1pxcVnYt4mCBI0oLvfklQMFSjYbJfk+Z4KlU=; b=sVXG3KJuxASVuP
	rBGTL/c7/yAW6GjwLfx9N84iAbYfCeRIcVFAO51GNQvCyjJKRrZtqEzpjXgh8lU0m2HFdaN0GUN7l
	tKyMdcq6o1oz5AjP0naLuftB/WxT/NKKI6YMcNG+RFn/1KXSommhFE8b4L/ecqZ6MnJlQF1/cfd+c
	T+2lPSp41CN4QqDP1cpbRR5UyhsUGY0PwXjgBVv7MQGu4woCAFPTIdiL9aa8cpBuzZSNiN/iQCiE3
	gO4/kUJABenDVhHVzHO+9dGku6XDn+UixnMj6XgcnyzmeMDXsYoPWP2b9YFQHM5ysuwaQuI1YERhH
	P1av+JZe6aioIles7jKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvnt-00034z-Lg; Thu, 05 Dec 2019 18:24:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvnp-00034W-Qh
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 18:24:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575570275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V1nzD6XQiqcf7Sb3uwLoYFBg4lqyPYFs6gWHxY4vaJw=;
 b=FPyz2I5rGi4E7qjXBaL8bVf83K7CFn+eXY2z3wZhMAkGUDgyUyD09C34E2wQ4mEXelW9fC
 BFCL+UpjXdOw1i5ODv3xHiZ1XAGna17ZJSPSoEGZE+33mHD5H5U37oWz/Cj3jaV1vRQCZE
 eMK84fJhpd8vCUW3JFFYuAre3AHvb3Y=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-152-FlVA6qohNaqyhB6ITvWrIw-1; Thu, 05 Dec 2019 13:24:34 -0500
Received: by mail-lf1-f71.google.com with SMTP id f16so648291lfc.2
 for <kexec@lists.infradead.org>; Thu, 05 Dec 2019 10:24:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w3XnIhbv39l5yyOg+NDDAOuWi4QPwY9BBy+2qiuvhB0=;
 b=cRjbv5LyABF+Dg4mtU4jrgPkath8TpyEJyTDUGXWZIHpSjYC7+vlKXTzigxU/ZSd3R
 PPyrHXvxzAI+VrzE42UEhTThlbcXx35121+SIq8EbSFaL/DEpLcCPhR/WeH/42oDwbpL
 RwmaYJuHoGBQts6+v4c7RFJvCEpFEp5Nq7ms6Tp3+LGz9oNNWjgEIXiXFRrygQuojll9
 TlhAvWKnrFlwGMgF0UPi1m+CFOE1pJ4kDsxoZ4NvrFRNUKeJFPoJclwsD4Ijn4bv/MC3
 Qu9oR5GTU38u+R9knx3BglPb0ZDStU9Vl/wJprO5a6+bSsH97wwm57rNswhTwciSfTqn
 ryfA==
X-Gm-Message-State: APjAAAUA1XCYgQwcLVFpSpOYPiT86/3epy3wMYIVuO6edDHMW6/JWFA7
 ZEAGa2jn/oFHVSltl+svKltp3gbNZZQe38I8QBns6uomYKA4MlE2V47xTUSUFNoVpd5zHS+8pZE
 pWz4eoHnZhJx3Di4MO5KpVxV8Hofz76zx5DRN
X-Received: by 2002:a2e:8505:: with SMTP id j5mr1615825lji.235.1575570272797; 
 Thu, 05 Dec 2019 10:24:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqwH8F+fIOkcyg6v33ewHJDDzmodA9Ig3F+Ej3P4Ag+dHEhIZIi2ZGpQGoRjDSxFbEZ8TTmztNhCqVgkcJkdbrI=
X-Received: by 2002:a2e:8505:: with SMTP id j5mr1615814lji.235.1575570272625; 
 Thu, 05 Dec 2019 10:24:32 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <1573556939-17803-5-git-send-email-bhsharma@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035971D4@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC035971D4@BPXM09GP.gisp.nec.co.jp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 5 Dec 2019 23:54:20 +0530
Message-ID: <CACi5LpP4KcUvRE8G5ngKE0iUT=Lu-D6d=B4B9ya8HpSr2KFuxQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] makedumpfile: Mark --mem-usage option unsupported
 for arm64
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
X-MC-Unique: FlVA6qohNaqyhB6ITvWrIw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_102437_938802_0EB8C63B 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kazu,

On Wed, Dec 4, 2019 at 11:20 PM Kazuhito Hagio <k-hagio@ab.jp.nec.com> wrote:
>
> > -----Original Message-----
> > This patch marks '--mem-usage' option as unsupported for arm64
> > architecture.
> >
> > With the newer arm64 kernels supporting 48-bit/52-bit VA address spaces
> > and keeping a single binary for supporting the same, the address of
> > kernel symbols like _stext which could be earlier used to determine
> > VA_BITS value, can no longer to determine whether VA_BITS is set to 48
> > or 52 in the kernel space.
>
> The --mem-usage option works with older arm64 kernels, so we should not
> mark it unsupported for all arm64 kernels.
>
> (If we use ELF note vmcoreinfo in kcore, is it possible to support the
> option?  Let's think about it later..)

Ok, I am in the process of discussing this with arm64 maintainers in
detail as _stext symbol address can no longer be used to separate
48-bit v/s 52-bit kernel VA space configurations.

Also other user-space utilities like 'kexec-tools' also face a similar
problem with the 52-bit change (as the vmcore-dmesg stops working).

I am currently caught up with another high priority issue. Will come
back with more thoughts on this in a couple of days.

Thanks,
Bhupesh

> > Hence for now, it makes sense to mark '--mem-usage' option as
> > unsupported for arm64 architecture until we have more clarity from arm64
> > kernel maintainers on how to manage the same in future
> > kernel/makedumpfile versions.
> >
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: kexec@lists.infradead.org
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  makedumpfile.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/makedumpfile.c b/makedumpfile.c
> > index baf559e4d74e..ae60466a1e9c 100644
> > --- a/makedumpfile.c
> > +++ b/makedumpfile.c
> > @@ -11564,6 +11564,11 @@ main(int argc, char *argv[])
> >               MSG("\n");
> >               MSG("The dmesg log is saved to %s.\n", info->name_dumpfile);
> >       } else if (info->flag_mem_usage) {
> > +#ifdef __aarch64__
> > +             MSG("mem-usage not supported for arm64 architecure.\n");
> > +             goto out;
> > +#endif
> > +
> >               if (!check_param_for_creating_dumpfile(argc, argv)) {
> >                       MSG("Commandline parameter is invalid.\n");
> >                       MSG("Try `makedumpfile --help' for more information.\n");
> > --
> > 2.7.4
> >
>
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
