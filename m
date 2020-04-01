Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A41819ABB7
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqnUQz9J/vRPnZBToQ0Q0yz1MgiuQBX03zMlfrfUBpQ=; b=RCEzwDnQfNKWAp
	4DC1U6tSJ2Zs1ltTxqR4OKgFDgb/dX9rc8K+Hp++1z4Yg/iMR/Spmq9n3kOd6flDpX5XEZMup4DTj
	CZX0IYa7LqXYJlD6rPE7nagtr4wHPPY+qwkk870FqllcucxulwLvFTMu+O2TxPMW7U89bVrKTUbUt
	3kJAwo63u6peeB0ZWnQL62XNbWPvXiuOGbxpa+8GzF0EA8adD825lPjds4ZXE4E782MPwZmTf5+Ss
	wPKLD//KvQbnywAy9EpCUGtMe2/e7OXXl5y71qsLWksMFcav3/OO75gLpmo2C/T82YSH6LSB5E/yQ
	aKWZrtq685eOZIyI/SxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcWN-0005MK-JJ; Wed, 01 Apr 2020 12:31:03 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcWI-0005M0-2V
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:30:59 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0D36925B779;
 Wed,  1 Apr 2020 23:30:50 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id ABE181B21; Wed,  1 Apr 2020 14:30:47 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:30:47 +0200
From: Simon Horman <horms@verge.net.au>
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Subject: Re: [PATCH] crashdump-ppc64: crashkernel-base and crashkernel-size
 are big-endian
Message-ID: <20200401123047.GA29376@vergenet.net>
References: <20200304232711.30464-1-cascardo@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304232711.30464-1-cascardo@canonical.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_053058_264109_CFAA588E 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec@lists.infradead.org, hbathini@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 08:27:11PM -0300, Thadeu Lima de Souza Cascardo wrote:
> When reading the device-tree exported crashkernel-base and
> crashkernel-size, their values should be converted from big-endian to the
> CPU byte order.
> 
> These is the output of running kexec --print-ckr-size on a little-endian
> ppc64 box.
> 
> $ kexec --print-ckr-size
> 137438953472
> $ kexec --print-ckr-size
> 536870912
> 
> Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
