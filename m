Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D86034306
	for <lists+kexec@lfdr.de>; Tue,  4 Jun 2019 11:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzXmwwf98Zc8f++ppo3NomjNYlpJARRJw13YMC1Zjcc=; b=DHoKCXJYFM2xfZ
	IGVRAuBd3bQeeh1RLr0XTOHmSG1RkqPQqCWNx9zW3XSf98D0kYfeOLeiTkEAb+XespS90B9bA9FhE
	yJPFoQbCdHMH4RjT8ByQupZKrHjWt0RFJLoeq/p+pn/Es4Bw3FfnpthUYaEGtcFgXVTqQxSXUv3gY
	+JhZxmgK5FGMYmJtIEqgDYFMMzH9wuciIfHD7+p5CR9jn6ILA3yhqveg6b+QQcm1VQLC6TXMkiBwR
	Ml3E6kOxSw83NN4RN7neokFZJwptCWU2P91Zdy56I24SxGMfzOM8GmyseQyCT4i804o4V0WxSDRKT
	MB3Twl9i+2PqasFCxTRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5cN-0002NK-Se; Tue, 04 Jun 2019 09:20:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5cG-0002Md-MW
 for kexec@lists.infradead.org; Tue, 04 Jun 2019 09:20:26 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0A92025B73F;
 Tue,  4 Jun 2019 19:20:20 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 0720E940986; Tue,  4 Jun 2019 11:20:17 +0200 (CEST)
Date: Tue, 4 Jun 2019 11:20:17 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86: Clear isVGA flag if current fb driver is mimicking
 VGA
Message-ID: <20190604092017.7gdsla2ey3l77edj@verge.net.au>
References: <20181123092801.16411-1-kasong@redhat.com>
 <20190531092923.ytuwwmmmmteh77cw@verge.net.au>
 <CACPcB9fcrQybChtt1GHEYOQ1K2hOWJANJP3sH5kxwpEC9RbRnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9fcrQybChtt1GHEYOQ1K2hOWJANJP3sH5kxwpEC9RbRnw@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_022024_881366_3C49B3CF 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, May 31, 2019 at 05:38:25PM +0800, Kairui Song wrote:
> On Fri, May 31, 2019 at 5:29 PM Simon Horman <horms@verge.net.au> wrote:
> >
> > On Fri, Nov 23, 2018 at 05:28:01PM +0800, Kairui Song wrote:
> > > Some device (eg. hyperv_fb) will mimic EFI (or VESA) VGA on first boot
> > > up, but after the real driver is loaded, it will switch to new mode
> > > and no longer compatible with EFI/VESA VGA. Keep setting
> > > orig_video_isVGA to EFI/VESA VGA flag will get wrong driver loaded and
> > > try to manipulate the framebuffer in a wrong way.
> > >
> > > As we have already take care of "VESA VGA" and "EFI VGA", just set the
> > > orig_video_isVGA to 0 for any other driver reports as EFI/VESA VGA but
> > > is not EFI/VESA VGA.
> > >
> > > Signed-off-by: Kairui Song <kasong@redhat.com>
> >
> > Sorry for letting this slip through the cracks.
> > Please let me know if this is still relevant.
> 
> Hi Simon, after fb5a879 ("x86: Introduce a new option
> --reuse-video-type") in kexec-tools, this patch is no longer needed.

Hi Kairui,

thanks for the clarification.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
