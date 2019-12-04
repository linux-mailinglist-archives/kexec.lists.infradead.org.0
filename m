Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49BB113CE1
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 09:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYy0wCuB9JY09hThOIwS7EXhd1/MPWGB71w3HcdQpr4=; b=KHTP/c1smX8nlB
	gLBjF/sFVXC7wj8cdoCSLQZvGhvfHpAdlpMBwehURJFEkZWXsUawZcvFF0F2KmNOHa5a5sbU+Fd+B
	4k1XfeGfsrA0hVoM8gHI3Qt2sAUfIZL04KJpJnZ/I2CJscqWNz6GOcWX70uswqoE3lAh5+J601nBc
	TQbdYxdk7LEbSd2RUn/GcjFEQMhAY0Dvjhw3u3MfQ8HSMvK/672ATBkbAiQjsQDUDfRUUSmWZSAwy
	ZuLe3rhioYp2Rk7WK2DOPYQROBHH2HZfHIHZ3GHO/swngmsRDJZYk3GOLQNJX2eY4rSCfmFOhiRuo
	n1iQWoE4XBKf6zO5c+3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmFY-0008H2-EB; Thu, 05 Dec 2019 08:12:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmFV-0008A6-0R; Thu, 05 Dec 2019 08:12:34 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22C3F206DB;
 Thu,  5 Dec 2019 08:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575533551;
 bh=ky657dThfKjbVCpIILkr6VubSyzgvjEQ7qr2LeYt6TY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zWTADLrRypv69ffcx5KeP3fiz0Z9hUuW2eeE9r2qjy2Q2u06vOT0cjeLRos5fN18Q
 sppeEg3dnSGvTz70LpCz/WxVXkTth+7KVp6rQAJ5RJFfexkW8hV+GIYj6xxZYbBu/t
 BZXTk0kbrZ1SYTl64LBHBAQbPQUI9zGCkth/Fk+8=
Date: Wed, 4 Dec 2019 16:17:25 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 7/8] linux/log2.h: Fix 64bit calculations in
 roundup/down_pow_two()
Message-ID: <20191204141725.GA4939@unreal>
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
 <20191203114743.1294-8-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203114743.1294-8-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_001233_080759_B54BCC3B 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
 Bjorn Helgaas <bhelgaas@google.com>,
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

On Tue, Dec 03, 2019 at 12:47:40PM +0100, Nicolas Saenz Julienne wrote:
> Some users need to make sure their rounding function accepts and returns
> 64bit long variables regardless of the architecture. Sadly
> roundup/rounddown_pow_two() takes and returns unsigned longs. It turns
> out ilog2() already handles 32/64bit calculations properly, and being
> the building block to the round functions we can rework them as a
> wrapper around it.
>
> Suggested-by: Robin Murphy <robin.murphy@arm.con>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/clk/clk-divider.c                    |  8 ++--
>  drivers/clk/sunxi/clk-sunxi.c                |  2 +-
>  drivers/infiniband/hw/hfi1/chip.c            |  4 +-
>  drivers/infiniband/hw/hfi1/init.c            |  4 +-
>  drivers/infiniband/hw/mlx4/srq.c             |  2 +-
>  drivers/infiniband/hw/mthca/mthca_srq.c      |  2 +-
>  drivers/infiniband/sw/rxe/rxe_qp.c           |  4 +-


Thanks, for infiniband.
Reviewed-by: Leon Romanovsky <leonro@mellanox.com>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
