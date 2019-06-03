Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1835632633
	for <lists+kexec@lfdr.de>; Mon,  3 Jun 2019 03:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mbIj28URVlCF01Dy8rwPcC32V7eGtG8BV1DZ4Y/h6w=; b=e8luBaVT5/njXG
	uS/8AYhFAIMTbx98BXaT3FX5Ggfy9LQznG24DrzRccHQAKbc9B6M8nNUgt0SuaSuvd8RNmcUi06dE
	DjsEgRHGb9wt7F0uFq/egoI8o2NyR7ZW9/j41gvyNbYUFVRlM7OTxdw+42hiE5GuG1t/4uKYsNHEw
	sKTjE4KprY7ZsIpH45nB2uD7j5xdMnKKVdwxoUasl1sxNUVJ5R7QPymEh6xy9oFlhvSi+5SQmeLtR
	r/8HislHnjWdZujdOQXnOpEdF6tp4W/4FRmli+81AzdelUChL2tXe8bd5k5ww0/sVxJsmcYZ2fixh
	CXUK6GM/CVItmJO9+X0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbwo-0007LX-2D; Mon, 03 Jun 2019 01:39:38 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbwg-0007L5-CO
 for kexec@lists.infradead.org; Mon, 03 Jun 2019 01:39:32 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7303B6642AD1C82210EF;
 Mon,  3 Jun 2019 09:39:19 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 3 Jun 2019
 09:39:10 +0800
Subject: Re: [PATCH] arm64: support more than one crash kernel regions
To: Simon Horman <horms@verge.net.au>
References: <20190403025504.30480-1-chenzhou10@huawei.com>
 <20190531092854.by4sgjggjyozgyaw@verge.net.au>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <0c438a39-81af-e2e1-3e45-946f694a6125@huawei.com>
Date: Mon, 3 Jun 2019 09:39:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20190531092854.by4sgjggjyozgyaw@verge.net.au>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_183930_653728_5919F0BA 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: takahiro.akashi@linaro.org, wangkefeng.wang@huawei.com,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Simon,

On 2019/5/31 17:28, Simon Horman wrote:
> On Wed, Apr 03, 2019 at 10:55:04AM +0800, Chen Zhou wrote:
>> When crashkernel is reserved above 4G in memory, kernel should
>> reserve some amount of low memory for swiotlb and some DMA buffers.
>> So there may be two crash kernel regions, one is below 4G, the other
>> is above 4G.
>>
>> Currently, there is only one crash kernel region on arm64, and pass
>> "linux,usable-memory-range = <BASE SIZE>" property to crash dump
>> kernel. Now, we pass
>> "linux,usable-memory-range = <BASE1 SIZE1 BASE2 SIZE2>" to crash
>> dump kernel to support two crash kernel regions and load crash
>> kernel high.
>>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> 
> Sorry for letting this slip through the cracks.
> Please let me know if this is still relevant.
> 

This is still relevant and the kernel patches are still under discussion.

Thanks,
Chen Zhou


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
