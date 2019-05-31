Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D6C30BC5
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfyAFeCQYCdbzwAMDAosv6Uim/xG0ipExfxYomLyhJA=; b=FRv7Z4A1KqFbm9
	8OlRf980uHrijjfA2oXo4uZZ7PsXCt1FRQ2l/WNHrhN5tlNPmydgxyaxpknycoD4db+/1ZUcYeFox
	rzxckvaB1kncHjHuFWcs5YHdvZVW8D6i6f9mpzzAQWxO21F8EPB+sjePamWtQxCIF5T3Y06USRQFi
	LZa8L9o46b8qprBlo42E8S7YeDRpgGVpybITe1whzTERPNY6gxLOhOWtfdWbYbqbMivGSElv60stg
	Bb9kioy3RDcLVGWYne4zcWfAyNae6K1X2FZ4yrfp+uZ0xUYgf0s3SGVQmkO4GPE/E1BNb62jX/OSP
	YXc4fFmaR1MhXJsspkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdzr-0003zQ-Uh; Fri, 31 May 2019 09:38:47 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdzj-0003yh-FG
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:38:46 +0000
Received: by mail-it1-f196.google.com with SMTP id j204so8884105ite.4
 for <kexec@lists.infradead.org>; Fri, 31 May 2019 02:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pI6aqZu6hJ3qkr4++Q/yE6MMQ9g9dGaVUGIh/nKitjg=;
 b=S1M9+Y3TLTXk47uRDExsXyIn4pj3X2tY/pexq5zmtYUmtC/elqdQG6bXQrfzp+fFsi
 aIxt+5VcLv30e++FrBf2RnB+c7Miou9B+8XAhwylr9gZ72UIjgmr8925iZKDXsW7o4a8
 xW6m9djTzd0X6Eb3ZrBhnxghB5h0I/JOwLYpUrwGJIYzroepTVTfWeOiNu6ZKdSpRUKS
 lk8GqDkU+ZISlPDZvPkBLJuoLrkFWB9ZhzSBbjA44iuFsMJOzjLdN2UhGJHZMAw8jZMf
 N6lDWtYY3tC/NZz8jX3d9UeOXnSE6XIEWY7PPNqsNOElu7H+RmiHFjxkZE1c7MfZUF1i
 lFJg==
X-Gm-Message-State: APjAAAXjS6OO7i60QGTQbj8zlKRRQRchYa6W0XLpVYivIYZvEW/yXvE6
 HD4bzW8SeDfo/2QF3/GsENmYQmjnjbh7QQhOetRQHg==
X-Google-Smtp-Source: APXvYqwoB+2aBCuWxNjaElbzl2Sr85sMT6baSsUh5gBvTIgrwWNwHmKiVan4hq5e+Ubg5I2MFmh3wplV5RpXPIYFTic=
X-Received: by 2002:a24:6cd5:: with SMTP id w204mr6176574itb.12.1559295516175; 
 Fri, 31 May 2019 02:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <20181123092801.16411-1-kasong@redhat.com>
 <20190531092923.ytuwwmmmmteh77cw@verge.net.au>
In-Reply-To: <20190531092923.ytuwwmmmmteh77cw@verge.net.au>
From: Kairui Song <kasong@redhat.com>
Date: Fri, 31 May 2019 17:38:25 +0800
Message-ID: <CACPcB9fcrQybChtt1GHEYOQ1K2hOWJANJP3sH5kxwpEC9RbRnw@mail.gmail.com>
Subject: Re: [PATCH] x86: Clear isVGA flag if current fb driver is mimicking
 VGA
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023843_594113_616E194F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 5:29 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Fri, Nov 23, 2018 at 05:28:01PM +0800, Kairui Song wrote:
> > Some device (eg. hyperv_fb) will mimic EFI (or VESA) VGA on first boot
> > up, but after the real driver is loaded, it will switch to new mode
> > and no longer compatible with EFI/VESA VGA. Keep setting
> > orig_video_isVGA to EFI/VESA VGA flag will get wrong driver loaded and
> > try to manipulate the framebuffer in a wrong way.
> >
> > As we have already take care of "VESA VGA" and "EFI VGA", just set the
> > orig_video_isVGA to 0 for any other driver reports as EFI/VESA VGA but
> > is not EFI/VESA VGA.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
>
> Sorry for letting this slip through the cracks.
> Please let me know if this is still relevant.

Hi Simon, after fb5a879 ("x86: Introduce a new option
--reuse-video-type") in kexec-tools, this patch is no longer needed.


--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
