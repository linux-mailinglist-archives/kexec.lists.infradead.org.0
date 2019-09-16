Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8428B3570
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 09:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJgRUqW6mO79iM5kFysFWnXW5GrHsP2nye41Rgjr+lA=; b=AOelxEwKyQZ7fK
	2O5P8FfyT7YItgwqnOn2njOOizK/iPARmPdLZ15pChodKgYFOnstIACg7dUh0/p+Ayqke4jrNTaU2
	EE2S6Pe15cPfsoQb03CNkaSgJR+U/+Y1EnEUP6sPGXJIkTdh4mzkJUbMDwZb1r8ehQw9vsIkDq4Ta
	Ywe8WtydSCuHxiMOWU2GxbiVhtGGL1r3QPdaW7NxGc0Gb8xd/hBpfd66ZjhJA1Vw952gKBrB/orMh
	YwwcfP21itMQHvuJxOdb1+UVmN/KBu0ikAS5SRtwKErmIH+FvTvm4MTnWRIG3OEVT+a2Z98b95rs1
	4EijIbzFCAsIx8/nGK4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lHL-0002ij-Dh; Mon, 16 Sep 2019 07:18:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lGR-0002aX-Eb
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 07:17:40 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AAB2625B6F5;
 Mon, 16 Sep 2019 17:17:30 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 9A1A9940316; Mon, 16 Sep 2019 09:17:28 +0200 (CEST)
Date: Mon, 16 Sep 2019 09:17:28 +0200
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH 0/2] Fix a compilation warning and a static check error
Message-ID: <20190916071728.53prtjga66sxejry@verge.net.au>
References: <20190910102150.7229-1-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910102150.7229-1-bhsharma@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_001738_600779_4F659485 
X-CRM114-Status: UNSURE (   6.10  )
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
Cc: bhupesh.linux@gmail.com, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 03:51:48PM +0530, Bhupesh Sharma wrote:
> This patchset fixes two kexec-tools issues:
>  - Fixes a shifting error reported by cppcheck inside
>    'vmcore-dmesg/vmcore-dmesg.c'.
>  - Fixes a compilation warning in 'i386/kexec-mb2-x86.c'.

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
