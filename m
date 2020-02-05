Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC78152878
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 10:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ip6yoiwwAuH24k1tAwdHbzuPCXALxslACnQkwi17iP0=; b=Y7q2je9215PSJc
	6CdOuIiShixcd58rkLZ+bDFGGW3ro2vscJSSvRJ+DNwUBAs8i3pw5rPoCwqKW8Wg+wab+g921nQQg
	kClvNICu/e2b/MFir0AM9XugDF7Yfd7QVrd10f46FrXsIya5KnHr3GI/xP8SnCOktnnB9V8KAAyJZ
	MkVV1yxnNY8SYguZHDQ8FsUEQy1xsRh3bQYYk1fFfTnarh+eEIbPmFX3cFwuDCdDKnvgMNNZS7nWT
	jBL4dd4OjbrLLq4hRntFwjl0TSUbpbsce2maofZiKu/V6PsFL6fAFstMkT2KL0l/nKONIQ8s3jwmY
	9Bu74JjljGm9EXhdkrAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH7L-00051T-Jc; Wed, 05 Feb 2020 09:37:07 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH7I-0004zn-4L
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 09:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580895418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V/sp7gj8I9qykKUt8ZuZBqOrNa3CqcXbspzOseC36ug=;
 b=KYBfURMR7tzd/Bapq8ENRUDYamNRfSIvAgVSEmHpR3RliAnHml1I4csgJBMyFR+QnQwtGi
 7ohEzi00XHdjzzu11yhxKVIdBMgyY0XFWYwIsMoT9n/HfAQ+i0l8ZqN66+QwoXKNubKjZh
 NpQjlkGJoz8ucXgdYGErguvO1mj3AMk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-4b-Is73GMliMOV8ahgAwXg-1; Wed, 05 Feb 2020 04:36:52 -0500
X-MC-Unique: 4b-Is73GMliMOV8ahgAwXg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE5BD1005F74;
 Wed,  5 Feb 2020 09:36:50 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-108.pek2.redhat.com
 [10.72.12.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B49EA5DA2C;
 Wed,  5 Feb 2020 09:36:44 +0000 (UTC)
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 John Ogness <john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com> <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <05bdb038-46dc-2939-60e5-7fda2877fa2e@redhat.com>
Date: Wed, 5 Feb 2020 17:36:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200205063640.GJ41358@google.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013704_257207_C524C578 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> On (20/02/05 13:38), lijiang wrote:
>>> On (20/02/05 13:48), Sergey Senozhatsky wrote:
>>>> On (20/02/05 12:25), lijiang wrote:
> 
> [..]
> 
>>>>
>>>> So there is a General protection fault. That's the type of a problem that
>>>> kills the boot for me as well (different backtrace, tho).
>>>
>>> Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR) enabled?
>>>
>>
>> Yes. These two options are enabled.
>>
>> CONFIG_RELOCATABLE=y
>> CONFIG_RANDOMIZE_BASE=y
> 
> So KASLR kills the boot for me. So does KASAN.
> 
For my side, after adding the option 'nokaslr' to kernel command line, I still have the
previously mentioned problem, finally, kernel failed to boot.

Thanks.

> John, do you see any of these problems on your test machine?
> 
> 	-ss
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
