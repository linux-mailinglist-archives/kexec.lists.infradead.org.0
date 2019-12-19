Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03CC125948
	for <lists+kexec@lfdr.de>; Thu, 19 Dec 2019 02:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vc7bV7maGI1IyxdMWbjrd+Vmh61bAmB9igDw1/cjJFI=; b=LEIjd50ossPgL1
	AAtA7nN3b9HgiOT+lMybnj7W/1fed4kYq+emlDsHF34mlSp34zaHg1Yvik24c341COVBiq69rBxpb
	ypS9YQ7UIqIakLqoaUMNrRIMNNc773SB69ILGsyTi7rWoyvbpucGzJby+7dgQ3XHhmrPuMGN5E8jQ
	8OXN6QxOVXazDj9DMB8BrFAoa5fffFZE4/TuYc5o5Hn7BvxRJfBcO12icgWlievN6eDQlrbFH+zZI
	pfauRcJelQIGGS4nnmH/xVzaT8EjCGGST1peiIockeC9jut2Z/7XBkBH4RuQCMqIe6JkLlEvpKjuV
	tfwHZIpVLzKWo9K6oHhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihkjD-0005QP-Ek; Thu, 19 Dec 2019 01:35:47 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihkjA-0005P4-6c; Thu, 19 Dec 2019 01:35:46 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 26576785A90840925E18;
 Thu, 19 Dec 2019 09:35:35 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 19 Dec 2019
 09:35:26 +0800
Subject: Re: [PATCH v6 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: Will Deacon <will@kernel.org>
References: <20190830071200.56169-1-chenzhou10@huawei.com>
 <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
 <20191218090932.GA14061@willie-the-truck>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <60f9bf3c-62d1-41cc-ad8e-0e06e6495d52@huawei.com>
Date: Thu, 19 Dec 2019 09:35:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20191218090932.GA14061@willie-the-truck>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_173544_420201_D6DFF2AA 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: horms@verge.net.au, catalin.marinas@arm.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 james.morse@arm.com, guohanjun@huawei.com, tglx@linutronix.de,
 dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Will

On 2019/12/18 17:09, Will Deacon wrote:
> On Wed, Dec 18, 2019 at 10:07:59AM +0800, Chen Zhou wrote:
>> Friendly ping...
> 
> You broke the build:
> 
> https://lore.kernel.org/lkml/201909010744.CDe940pv%lkp@intel.com
> https://lore.kernel.org/lkml/201909010704.4m9y2sg7%lkp@intel.com
> 
> So I doubt anybody will seriously look at this.

I was also waiting for other suggestions.
I will fix this in next version.

> 
> Will
> 
> .

Thanks,
Chen Zhou


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
