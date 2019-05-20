Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB2F2412E
	for <lists+kexec@lfdr.de>; Mon, 20 May 2019 21:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBHs+SWsJh51NfjfwDld9yV2wkL08TmkgkQU+84xJ0o=; b=gdtWchssbIKkF+
	r3eSN11bMuL10ZUzyrViCeSztkvu8tFz+lhdWOy2CSsV35lCimo51d9RjZ6M0MDcAARkcoWtJ0yzp
	fFT4pjaSYbrH3wrlbNUK/b2JiCTtFP9rST9CjTL7ZAQo0jgzRTTEnArtCoHP6xuhR76Kyd+WNk6S9
	iueKhQMB7C/rfzWGP8GZoW/qKhzXRFbls73C0eP2c3EWzX1x6lv5+TraXtEvYkM6aXCxevsJNRgwB
	ksMt5Bf9VdudZGHjs8BLVzMkh4+LsD10SeV2OrTwl3SSXag0ro9vFOCU+BFlNE9qHZp7eIOGVCCTo
	7vazIsDKoUDW9hm4flWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnwx-0003n2-6z; Mon, 20 May 2019 19:27:55 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnwu-0003m8-AE
 for kexec@lists.infradead.org; Mon, 20 May 2019 19:27:53 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 2172E6A2;
 Mon, 20 May 2019 19:27:50 +0000 (UTC)
Date: Mon, 20 May 2019 13:27:49 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Cengiz Can <cengizc@gmail.com>
Subject: Re: [PATCH] Documentation: kdump: fix minor typo
Message-ID: <20190520132749.093c3c78@lwn.net>
In-Reply-To: <20190514161724.16604-1-cengizc@gmail.com>
References: <20190514161724.16604-1-cengizc@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_122752_357677_BA93A4B7 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 19:17:25 +0300
Cengiz Can <cengizc@gmail.com> wrote:

> kdump.txt had a minor typo.
> 
> Signed-off-by: Cengiz Can <cengizc@gmail.com>
> ---
>  Documentation/kdump/kdump.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/kdump/kdump.txt b/Documentation/kdump/kdump.txt
> index 51814450a7f8..3162eeb8c262 100644
> --- a/Documentation/kdump/kdump.txt
> +++ b/Documentation/kdump/kdump.txt
> @@ -410,7 +410,7 @@ Notes on loading the dump-capture kernel:
>  * Boot parameter "1" boots the dump-capture kernel into single-user
>    mode without networking. If you want networking, use "3".
>  
> -* We generally don' have to bring up a SMP kernel just to capture the
> +* We generally don't have to bring up a SMP kernel just to capture the

Applied, thanks.

jon

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
