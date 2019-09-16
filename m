Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331EEB3571
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 09:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brAEEKcbY6KKhLu3KrD5rqnxe2BBk4dMfkoivQl986g=; b=JeIy29cZH3kajJ
	bIsGtlDdIMfvypQ0TQ/RFgXt+KAz3oBkP/y9o9qCOxB5F0kpATOqKduJ729rUQrIjNBukfLwuSYev
	226uEZMpJYHbOK095F3TK9NTl4f4s/RpMoMU/q+Fyg5MBGexNFcoCIao2d+yVTzligca1+qF2v2rL
	M9RDdEOQ34iBlfRP1e+Gh8EceTEtCTcOeBopp0OjPw5VFk0+GnE8ptT3dfULvKg9xWoa1FxQO0SPN
	CuPo3hKDC7KaC3dS0Q9bHzVCxYUcaXleNYcf9cu0K40fyi85IQJo2FgjVlfogv+EGPC9fwnPE9sdH
	dZlRpQ+e3iO6+PO3pNWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lIa-0002qa-Lq; Mon, 16 Sep 2019 07:19:48 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lIR-0002q3-Jy
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 07:19:41 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id B818125B6F5;
 Mon, 16 Sep 2019 17:19:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A96D0940316; Mon, 16 Sep 2019 09:19:36 +0200 (CEST)
Date: Mon, 16 Sep 2019 09:19:36 +0200
From: Simon Horman <horms@verge.net.au>
To: quanyang.w@gmail.com
Subject: Re: [PATCH] kexec/arm: undefine __NR_kexec_file_load for arm
Message-ID: <20190916071936.q735mn7fo5sctkix@verge.net.au>
References: <20190916024905.3100-1-quanyang.w@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916024905.3100-1-quanyang.w@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_001939_815819_8E69C1D3 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:49:05AM +0800, quanyang.w@gmail.com wrote:
> From: Quanyang Wang <quanyang.wang@windriver.com>
> 
> In the kernel upstream commit 4ab65ba7a5cb
> ("ARM: add kexec_file_load system call number"),
> __NR_kexec_file_load for arm has been defined to be 401.
> This results that even if kexec_file_load isn't implemented
> for arm but the function is_kexec_file_load_implemented()
> will still return true. So undef __NR_kexec_file_load for
> arm architecture.
> 
> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
