Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6130B84
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO0nC9coRK9WDVS4qUbXlKwBGhpBJ3zFW53ys7LJwKY=; b=Skzw7YfhZgpyBm
	dA1fn9TycAKqVzRqJdfv39iCmpO+t55vBVfmcu1bz1HDfzDixSEzPa1fBeVVmN1XrN+CMbTyw5Wlu
	l95IziPX4hfZoZjsKjKPOYSzS3UWFs1FCWyZpjInV1nJjdCX1AOD+WpX3HtAFcPRUIyEkdc6awEhH
	dP+Gnw86VUhJZt9/E9ifESvaOHtmt6J+r3/HuFlHZWMmAKGOY+pf56TSZHIlwSy5xk9/1qOE1HTpr
	uK3dgTpyK4cq3erU8jd+xNAWB7QwSs9YCZIQFBVerPzRNo3empOKk10I0pB2Ok5t08l8UA2VMktCw
	w3/2Bp3DPvpQJImYfZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdqs-0006nc-GV; Fri, 31 May 2019 09:29:30 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdqo-0006nF-Un
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:29:28 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 12EA525AE77;
 Fri, 31 May 2019 19:29:26 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 161B89401DB; Fri, 31 May 2019 11:29:24 +0200 (CEST)
Date: Fri, 31 May 2019 11:29:24 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86: Clear isVGA flag if current fb driver is mimicking
 VGA
Message-ID: <20190531092923.ytuwwmmmmteh77cw@verge.net.au>
References: <20181123092801.16411-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181123092801.16411-1-kasong@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022927_138926_C9008EFB 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: dyoung@redhat.com, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Nov 23, 2018 at 05:28:01PM +0800, Kairui Song wrote:
> Some device (eg. hyperv_fb) will mimic EFI (or VESA) VGA on first boot
> up, but after the real driver is loaded, it will switch to new mode
> and no longer compatible with EFI/VESA VGA. Keep setting
> orig_video_isVGA to EFI/VESA VGA flag will get wrong driver loaded and
> try to manipulate the framebuffer in a wrong way.
> 
> As we have already take care of "VESA VGA" and "EFI VGA", just set the
> orig_video_isVGA to 0 for any other driver reports as EFI/VESA VGA but
> is not EFI/VESA VGA.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>

Sorry for letting this slip through the cracks.
Please let me know if this is still relevant.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
