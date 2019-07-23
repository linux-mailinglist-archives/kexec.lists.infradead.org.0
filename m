Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84C071919
	for <lists+kexec@lfdr.de>; Tue, 23 Jul 2019 15:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/kpod1KEP8m4m3oT+OEuk12wL/Dkcx0KajJYc3DgyQ=; b=fFnyN/KG/vnvC3
	XEsuH6JwTXBNgxZaJe+d64GqR4gRVEqP6cdTvIYMWphNKAlzw5YO8mdoh7Bcwxxs5oWY5Vc29FI62
	ZKvwS+Q7nP6aZ90yY1EcN6GOBnYS+VKvz7lkFAaqDS7URUoep5g+g1m1TvaQQvUSDP2qPFEqozoP/
	xPcCM+ushSdmRQx9KC8bc/KNNkM8MO22PVw1ZPtFhupPxS6/eOcE87DsfVQyGtGHbe+oHGtX99P0Y
	b4IEARkdX8tOzczbeudcJyEWodVvv89fXeWznwwZAG7I35EFptrDYIKOnzm4P4Zap5YICs4zRgWS6
	Qm/fdB74uiY55v2x+A4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpul6-0004xD-OF; Tue, 23 Jul 2019 13:23:12 +0000
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpul1-0004vc-W5
 for kexec@lists.infradead.org; Tue, 23 Jul 2019 13:23:09 +0000
Received: from fsav401.sakura.ne.jp (fsav401.sakura.ne.jp [133.242.250.100])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x6NDMxDj022870;
 Tue, 23 Jul 2019 22:22:59 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav401.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav401.sakura.ne.jp);
 Tue, 23 Jul 2019 22:22:59 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav401.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x6NDMq6D022842
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 23 Jul 2019 22:22:59 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Subject: Re: [PATCH] kexec: Bail out upon SIGKILL when allocating memory.
To: Andrew Morton <akpm@linux-foundation.org>
References: <000000000000a861f6058b2699e0@google.com>
 <000000000000c0103a058b2ba0ec@google.com>
 <993c9185-d324-2640-d061-bed2dd18b1f7@I-love.SAKURA.ne.jp>
 <612eebbe-336a-c1d0-904b-5970d3c4dbb0@I-love.SAKURA.ne.jp>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <eb662b31-3a56-f3fd-6a0c-7e9f8b36ca8a@I-love.SAKURA.ne.jp>
Date: Tue, 23 Jul 2019 22:22:55 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <612eebbe-336a-c1d0-904b-5970d3c4dbb0@I-love.SAKURA.ne.jp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_062308_239451_C18CB465 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Andrew, can you pick up this patch? 

On 2019/07/01 19:52, Tetsuo Handa wrote:
> Andrew, can you pick up this patch? We might miss next merge window, for
> Eric Biederman seems to be offline for two weeks. 
> 
> On 2019/06/14 19:16, Tetsuo Handa wrote:
>> syzbot found that a thread can stall for minutes inside kexec_load() after
>> that thread was killed by SIGKILL [1]. It turned out that the reproducer
>> was trying to allocate 2408MB of memory using kimage_alloc_page() from
>> kimage_load_normal_segment(). Let's check for SIGKILL before doing memory
>> allocation.
>>
>> [1] https://syzkaller.appspot.com/bug?id=a0e3436829698d5824231251fad9d8e998f94f5e
>>
>> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
>> Reported-by: syzbot <syzbot+8ab2d0f39fb79fe6ca40@syzkaller.appspotmail.com>
>> ---
>>  kernel/kexec_core.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>> index fd5c95f..2b25d95 100644
>> --- a/kernel/kexec_core.c
>> +++ b/kernel/kexec_core.c
>> @@ -302,6 +302,8 @@ static struct page *kimage_alloc_pages(gfp_t gfp_mask, unsigned int order)
>>  {
>>  	struct page *pages;
>>  
>> +	if (fatal_signal_pending(current))
>> +		return NULL;
>>  	pages = alloc_pages(gfp_mask & ~__GFP_ZERO, order);
>>  	if (pages) {
>>  		unsigned int count, i;
>>
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
