Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530A114950
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 23:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ynif5LBzCUF7jqOZhrKGKhDgeYw54Y4j3Hz2bfXfqI0=; b=kE5UFatARaqoQT
	JcG06yYSF1gUgh+NcbbpoT3F2xIy/tog3tdgGFk3nfBoL6Zp3sFTwS7vybbU7blJy8VEBAPtjCz2U
	+4GAlFJ80DC0FEBvLqoyCv2XnPGw3FxyQpC5FCG8ZXXSG5c6Uw3IPndIDVLWlV/2UvhfJscSifs4n
	wboplcO49xaZLeBHySoeDfBVgaOMZ490rRDjqjKzAKvirNLnLR+ZKPBErsTJeh0kwj8309eUY8Svo
	vuwgDnH1SJaxcTzsUyDBAKFFj/SUZQ+DsBbEr5X28lodrNz71tmXTJT195z7nuI7UlZiM1WTUVAPX
	OWDrg8n43V9vqvKKUhJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczeB-0007fy-Ag; Thu, 05 Dec 2019 22:30:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icze4-0007Z9-TL; Thu, 05 Dec 2019 22:30:50 +0000
Received: from localhost (mobile-166-170-221-197.mycingular.net
 [166.170.221.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84F6520707;
 Thu,  5 Dec 2019 22:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575585047;
 bh=rwc2W/J/V58JZoKOWg2doRruK6KWPbQgM5Sb2F/Ai60=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cliOZcUxDWzGZ1UQTKJkPsD++s/EPrjyE7H/snJuA3uqE7NURH520sOnVje6nd0Ts
 Td38CmfeZyMBlRyr+Rypsepv/EG8hoAOa7B7sJiJzOVgMDkiBquX3yxdZnHzKOkS/c
 BBv+wew7DxEj2QDNBsIebdp/nYnu0CS5l8OPwMaM=
Date: Thu, 5 Dec 2019 16:30:44 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 7/8] linux/log2.h: Fix 64bit calculations in
 roundup/down_pow_two()
Message-ID: <20191205223044.GA250573@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203114743.1294-8-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_143049_068772_69E30AAE 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: linux-pci@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-nfs@vger.kernel.org,
 Edward Cree <ecree@solarflare.com>, linux-clk@vger.kernel.org,
 f.fainelli@gmail.com, Herbert Xu <herbert@gondor.apana.org.au>,
 Emilio =?iso-8859-1?Q?L=F3pez?= <emilio@elopez.com.ar>, maz@kernel.org,
 Joerg Roedel <joro@8bytes.org>, phil@raspberrypi.org,
 Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Chen-Yu Tsai <wens@csie.org>, Chuck Lever <chuck.lever@oracle.com>,
 Martin Habets <mhabets@solarflare.com>, wahrenst@gmx.net,
 Tom Lendacky <thomas.lendacky@amd.com>, Jiri Pirko <jiri@resnulli.us>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, Mirko Lindner <mlindner@marvell.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>, mbrugger@suse.com,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 "David S. Miller" <davem@davemloft.net>,
 Stephen Hemminger <stephen@networkplumber.org>, linux-rdma@vger.kernel.org,
 iommu@lists.linux-foundation.org, Moni Shoua <monis@mellanox.com>,
 Eric Biederman <ebiederm@xmission.com>, james.quinlan@broadcom.com,
 Thomas Graf <tgraf@suug.ch>, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.con>, David Woodhouse <dwmw2@infradead.org>,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

You got the "n" on "down" in the subject, but still missing "of" ;)

On Tue, Dec 03, 2019 at 12:47:40PM +0100, Nicolas Saenz Julienne wrote:
> Some users need to make sure their rounding function accepts and returns
> 64bit long variables regardless of the architecture. Sadly
> roundup/rounddown_pow_two() takes and returns unsigned longs. It turns
> out ilog2() already handles 32/64bit calculations properly, and being
> the building block to the round functions we can rework them as a
> wrapper around it.

Missing "of" in the function names here.
s/a wrapper/wrappers/

IIUC the point of this is that roundup_pow_of_two() returned
"unsigned long", which can be either 32 or 64 bits (worth pointing
out, I think), and many callers need something that returns
"unsigned long long" (always 64 bits).

It's a nice simplification to remove the "__" variants.  Just as a
casual reader of this commit message, I'd like to know why we had both
the roundup and the __roundup versions in the first place, and why we
no longer need both.

> -#define roundup_pow_of_two(n)			\
> -(						\
> -	__builtin_constant_p(n) ? (		\
> -		(n == 1) ? 1 :			\
> -		(1UL << (ilog2((n) - 1) + 1))	\
> -				   ) :		\
> -	__roundup_pow_of_two(n)			\
> - )
> +#define roundup_pow_of_two(n)			  \
> +(						  \
> +	(__builtin_constant_p(n) && ((n) == 1)) ? \
> +	1 : (1ULL << (ilog2((n) - 1) + 1))        \
> +)

Should the resulting type of this expression always be a ULL, even
when n==1, i.e., should it be this?

  1ULL : (1ULL << (ilog2((n) - 1) + 1))        \

Or maybe there's no case where that makes a difference?

Bjorn

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
