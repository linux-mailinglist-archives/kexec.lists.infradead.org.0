Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02FA17B148
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 23:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC1McGWBvKFL+NlbbmTycp2ZWJPtiaBaK/tgeKXnUsM=; b=OlvjxXW8edKI5V
	u1W7YU6s4wqzHQ6xvj7e4S6Y3IvqW9d4RpuD+jfQT88TMBdKvpZGvc3iSQ0X1kV0N3EMCOS6eaIuf
	wDEwkKA6Z1ksT8ffR4hYesO0ngHOtOBkOewNSwQOxXSVordftMHIZkmvFHwR8ThYIKwcwBDVHZZCu
	rf4HquCNXCh12eBKrrpVThNFD7+pMaMewGkSeHkmLa4Q/1SZbX2eLbIfykUmDBt2nPXv5VZYtovoF
	9DcQhejIlAoqsyMLPqA/oZ7/50/1KPcRVTrUfucPTxPePdD8idFpPdOXStmoHEJ+pz7hqwCnhC0Fj
	9UhPZSvzFJMNxhGwwg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yl6-00068I-GK; Thu, 05 Mar 2020 22:14:24 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yl2-00067i-F5
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 22:14:22 +0000
Received: from mail-wm1-f69.google.com ([209.85.128.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <gpiccoli@canonical.com>) id 1j9yky-00057l-Nt
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 22:14:16 +0000
Received: by mail-wm1-f69.google.com with SMTP id g26so112336wmk.6
 for <kexec@lists.infradead.org>; Thu, 05 Mar 2020 14:14:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=PEhjdIb0cAkDzgLASbq5vcFEHxV99OMMw6gv38F6A08=;
 b=pVuA8zyD0TnfIpgalp+AO/gB/Jo7mdF58Vt1OI/qY3J7e8HZepAlsx3RHFcZggHpgp
 hj68yGdzc+V1m3XGCs2JCoQeIucGgpVQSI6UOhGRyJMSW00qmMvv7miQI8JQ6sWOu+mX
 Z+dECrSck047QzHEZmLlzvhS3c3bhUrh9O2xV+U/RSnilxbSfyOYr/eTbBJ49t4tDk6o
 riFwyKdR/jkfRCainLDLlt0qb7szJlhaH1p4BtpU2hS17a3NkITHga6+zfEmvWTwH1FO
 d3D2uMo5vVyppdMC0ACIvVjaEBv0S2UfeElX/IPFmZZ1naT6dbZ1Hy4qRYLKf6TBXP/q
 NiQA==
X-Gm-Message-State: ANhLgQ2m+7p6bPTxwuiehJ4J9uJ1r5A43tEZRoCiAID56wpXswNW4Jiq
 /psYDAub5ce3BSfyHhpLweK0VE8N0o3UrM7sNTg6P6WnD2JK02VBB5vW38P0yDQgC7l/PU/udvs
 Zivbg0N9nlZ23sw3D26xLI+9T7NlSD+Zmi2h18Q==
X-Received: by 2002:adf:f14a:: with SMTP id y10mr59982wro.325.1583446454912;
 Thu, 05 Mar 2020 14:14:14 -0800 (PST)
X-Google-Smtp-Source: ADFU+vshZAlSCiSKHMMGSFFoqG8ixlKCVoOjHvvfe4Cm2705OHxz+shmYH9AkdFOc7goPG2PlhBRuw==
X-Received: by 2002:adf:f14a:: with SMTP id y10mr59960wro.325.1583446454479;
 Thu, 05 Mar 2020 14:14:14 -0800 (PST)
Received: from [192.168.1.75] ([189.110.150.31])
 by smtp.gmail.com with ESMTPSA id n1sm102278wrj.77.2020.03.05.14.14.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 14:14:13 -0800 (PST)
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
To: Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gpiccoli@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFpVBxcBCADPNKmu2iNKLepiv8+Ssx7+fVR8lrL7cvakMNFPXsXk+f0Bgq9NazNKWJIn
 Qxpa1iEWTZcLS8ikjatHMECJJqWlt2YcjU5MGbH1mZh+bT3RxrJRhxONz5e5YILyNp7jX+Vh
 30rhj3J0vdrlIhPS8/bAt5tvTb3ceWEic9mWZMsosPavsKVcLIO6iZFlzXVu2WJ9cov8eQM/
 irIgzvmFEcRyiQ4K+XUhuA0ccGwgvoJv4/GWVPJFHfMX9+dat0Ev8HQEbN/mko/bUS4Wprdv
 7HR5tP9efSLucnsVzay0O6niZ61e5c97oUa9bdqHyApkCnGgKCpg7OZqLMM9Y3EcdMIJABEB
 AAG0LUd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGljY29saUBjYW5vbmljYWwuY29tPokBNwQT
 AQgAIQUCWmClvQIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDOR5EF9K/7Gza3B/9d
 5yczvEwvlh6ksYq+juyuElLvNwMFuyMPsvMfP38UslU8S3lf+ETukN1S8XVdeq9yscwtsRW/
 4YoUwHinJGRovqy8gFlm3SAtjfdqysgJqUJwBmOtcsHkmvFXJmPPGVoH9rMCUr9s6VDPox8f
 q2W5M7XE9YpsfchS/0fMn+DenhQpV3W6pbLtuDvH/81GKrhxO8whSEkByZbbc+mqRhUSTdN3
 iMpRL0sULKPVYbVMbQEAnfJJ1LDkPqlTikAgt3peP7AaSpGs1e3pFzSEEW1VD2jIUmmDku0D
 LmTHRl4t9KpbU/H2/OPZkrm7809QovJGRAxjLLPcYOAP7DUeltveuQENBFpVBxcBCADbxD6J
 aNw/KgiSsbx5Sv8nNqO1ObTjhDR1wJw+02Bar9DGuFvx5/qs3ArSZkl8qX0X9Vhptk8rYnkn
 pfcrtPBYLoux8zmrGPA5vRgK2ItvSc0WN31YR/6nqnMfeC4CumFa/yLl26uzHJa5RYYQ47jg
 kZPehpc7IqEQ5IKy6cCKjgAkuvM1rDP1kWQ9noVhTUFr2SYVTT/WBHqUWorjhu57/OREo+Tl
 nxI1KrnmW0DbF52tYoHLt85dK10HQrV35OEFXuz0QPSNrYJT0CZHpUprkUxrupDgkM+2F5LI
 bIcaIQ4uDMWRyHpDbczQtmTke0x41AeIND3GUc+PQ4hWGp9XABEBAAGJAR8EGAEIAAkFAlpV
 BxcCGwwACgkQzkeRBfSv+xv1wwgAj39/45O3eHN5pK0XMyiRF4ihH9p1+8JVfBoSQw7AJ6oU
 1Hoa+sZnlag/l2GTjC8dfEGNoZd3aRxqfkTrpu2TcfT6jIAsxGjnu+fUCoRNZzmjvRziw3T8
 egSPz+GbNXrTXB8g/nc9mqHPPprOiVHDSK8aGoBqkQAPZDjUtRwVx112wtaQwArT2+bDbb/Y
 Yh6gTrYoRYHo6FuQl5YsHop/fmTahpTx11IMjuh6IJQ+lvdpdfYJ6hmAZ9kiVszDF6pGFVkY
 kHWtnE2Aa5qkxnA2HoFpqFifNWn5TyvJFpyqwVhVI8XYtXyVHub/WbXLWQwSJA4OHmqU8gDl
 X18zwLgdiQ==
Message-ID: <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
Date: Thu, 5 Mar 2020 19:14:07 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_141420_646363_D2F76833 
X-CRM114-Status: GOOD (  41.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Guowen Shan <gshan@redhat.com>, Baoquan He <bhe@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>, pedro.principeza@canonical.com,
 Dave Young <dyoung@redhat.com>, Gavin Guo <gavin.guo@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

[I'm responding on top of my last message, fully quoting it below
because it was moderated and didn't get published in the mailing-list,
for some reason. If any moderator can make it public, I appreciate!]

Hi Bhupesh, I re-tested again using 5.6-rc4 with "retain_initrd" and
"swiotlb=noforce" and got a quite interesting discrepancy. First run got
me 99 kexecs with no issue (the public IP of my AWS instance was
3.215.x.y). After this, I powered the instance off and some minutes
later, restarted it (and the new IP was 34.239.x.y) - guess what? It
failed after 6th kexec iteration with an oops, which I was able to
collect [0] using pstore.

So, I'm inclined to think when I restarted the instance (and it got a
different IP, on a different range), likely it got deployed in a
different host, which explain some differences we are observing across
tests. I collected DMI data on both but it didn't show me any difference
- it is though feasible to hide host details from guest (almost?)
completely, so this should be a question to AWS.

Finally, I forgot to mention you in the previous email: you asked me
about testing kexec-tools with commit [1], and I tried also, but it
didn't help, specially because it affects the "/proc/iomem" memory read
path, but kexec-tools uses get_memory_ranges_sysfs() by default, which
reads from firmware memmap.
In the past I tried to force kexec-tools to read from /proc/iomem, but
it didn't help the issue. Now I just tried again forcing the usage of
get_memory_ranges_proc_iomem() with patch merged [1], but same issue
reproduces (failure on 2nd kexec with initrd corruption).

Cheers,


Guilherme



[0] https://pastebin.ubuntu.com/p/fS6c3sPMgk/
[1] http://lists.infradead.org/pipermail/kexec/2020-February/024531.html


On 04/03/2020 16:22, Guilherme G. Piccoli wrote:
> On 04/03/2020 15:39, Bhupesh Sharma wrote:
>> Hi,
> 
> Hi Bhupesh, thanks for your prompt and thorough response!
> I manage to do some tests myself, based on your last email, and will
> share my result inline below:
> 
> 
>>
>> On Mon, Mar 2, 2020 at 1:39 PM Dave Young <dyoung@redhat.com> wrote:
>>>>
>>>> I have a couple of questions:
>>>> - How do you conclude that you see an initrd corruption across kexec?
>>>> Do you print the initial hex contents of initrd across kexec?
>>>
>>> I'm also interested if any of you can dump the initrd memory in kernel
>>> printk log, and then save to somewhere to compare with the original
>>> initrd content.
> 
> I didn't print yet Dave, but seems Bhupesh did and the 1st 4M are the
> same right? The way the issue shows to me is an oops on the 2nd kexec
> (in other words, the 1st kexec from a kexec'ed kernel!), with the
> following message:
> 
> "Initramfs unpacking failed: junk in compressed archive"
> 
> Also, I've added debug code on kernel initramfs routines to trace-printk
> file-by-file as they got decompressed; then, by doing
> "ftrace_dump_on_oops" I could check the list of files and it's really
> partial (the biggest part of the files are not decompressed).
> It fails usually in this if, on flush_buffer() [init/initramfs.c]:
> 
> if (c == '0')
> [...]
> else if (c == 0)
> [...]
> else
> [junk]
> 
> A print of 'c' variable in this point shows its value as 6.
> I'm attaching here a dmesg (collected through pstore/ramoops) so you can
> take a look.
> 
> 
>>
>> I did several overnight tests on the aws machine and can confirm kexec
>> reboot failure issue (multiple tries) can be seen even with
>> 'retain_initrd' in the kernel bootargs or by using kexec_file_load
>> ('kexec -s -l') instead of plain kexec_load ('kexec -l').
>>
> 
> I managed to test multiple kexecs in an automated way (using a crontab
> plus a script with a counter in my AWS instance) and you are right,
> after some kexecs it fails. My test survived for 70 kexecs, and it
> failed in the end by not jumping into the new kernel / failing really
> early and getting stuck on "kexec_core: Starting new kernel", as you said.
> 
> This seems to be a different manifestation of the issue, we seem to
> prevent the usual effect of initrd "corruption" by using the
> "retain_initrd" parameter.
> 
> Also, when I added both "retain_initrd" and "swiotlb=noforce" to
> command-line, the test failed after 10 iterations in a different way -
> it crashed and rebooted to regular kernel (as I have "oops=panic" and
> "panic=1" in my cmdline), but pstore wasn't enabled in that test, so
> didn't collect that information (I plan to re-test that).
> 
> 
>> - Here are my observations:
>>
>> 1. Adding 'retain_initrd' to the bootargs, helps delay the kexec
>> reboot failure (when successive kexec reboots are executed), but the
>> (possible ?) initrd corruption is still seen (as per the panic logs
>> from the kexec kernel).
>>
>> 2. I printed the first 4M of initrd file via kernel code (both in the
>> primary and kexec kernel, see
>> <https://bugzilla.redhat.com/attachment.cgi?id=1667523> and
>> <https://bugzilla.redhat.com/attachment.cgi?id=1667521>) and
>> interestingly the first 4M contents are _exactly_ similar for primary
>> and kexec kernel, even though we see a (possible ?) initrd corruption.
>> See logs below from kexec kernel in case of panic:
>>
>> [    4.229170] Call Trace:
>> [    4.234379]  dump_stack+0x5c/0x80
>> [    4.239840]  panic+0xe7/0x2a9
>> [    4.245291]  do_exit.cold.22+0x59/0x81
>> [    4.251025]  do_group_exit+0x3a/0xa0
>> [    4.256784]  __x64_sys_exit_group+0x14/0x20
>> [    4.262905]  do_syscall_64+0x5b/0x1a0
>> [    4.268537]  entry_SYSCALL_64_after_hwframe+0x65/0xca
>> [    4.275784] RIP: 0033:0x7ff749106e2e
>> [    4.281469] Code: Bad RIP value.
>> [    4.286981] RSP: 002b:00007fffb6d707f8 EFLAGS: 00000206 ORIG_RAX:
>> 00000000000000e7
>> [    4.298381] RAX: ffffffffffffffda RBX: 00007ff74910f528 RCX: 00007ff749106e2e
>> [    4.305616] RDX: 000000000000007f RSI: 000000000000003c RDI: 000000000000007f
>> [    4.313064] RBP: 00007ff749306000 R08: 00000000000000e7 R09: 00007fffb6d70708
>> [    4.320369] R10: 0000000000000000 R11: 0000000000000206 R12: 0000000000000000
>> [    4.327671] R13: 0000000000000022 R14: 00007ff749306148 R15: 00007ff749306030
>> [    4.335396] Kernel Offset: 0x2a400000 from 0xffffffff81000000
>> (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
>> [    4.348002] ---[ end Kernel panic - not syncing: Attempted to kill
>> init! exitcode=0x00007f00
>> [    4.348002]  ]---
>>         2020-03-03T09:01:27+00:00
>>
> 
> This is really interesting! If you could share the code you used to dump
> the initrd, I can try in my mainline build with Ubuntu config and dump
> the whole initrd to check if it's the same on regular and kexec'ed
> kernels. I was planning to work on something like this after Dave's
> suggestion...
> 
> Also, my oops splat is different from yours (as you can check in the
> attached dmesg); it really seems the initrd "corruption" is just one
> potential side-effect of this issue, you're observing a different failure.
> 
> 
>> 3. So the root-cause seems to be something else. I will do some more
>> debugging to evaluate the same.
> 
> Agreed! I'll debug from here too. I'm considering an instrumentation on
> the shutdown path and add "retain_initrd" to see if I can reproduce that
> hang (on "Starting new kernel") and collect more information - the
> difficult part is that when that issue occur, I can't access console via
> AWS interface and pstore won't work in this shutdown hang, since it's
> not an oops event heheh
> 
> 
>>
>> 4. I added two scripts (via
>> <https://bugzilla.redhat.com/attachment.cgi?id=1667561> and
>> <https://bugzilla.redhat.com/attachment.cgi?id=1667560>) which provide
>> an automated reproducer.
>>
>> This reproducer can be run on the Host machine and launches repeated
>> kexec reboots on the aws machine.
>>
>> Normally approx. 5-12 runs of the master script (i.e. kexec reboots)
>> can lead to a panic in the kexec kernel which indicates a (possible ?)
>> initrd corruption.
>>
>> @Guilherme: Can you please help verify the observations on your setup
>> (both amazon and upstream kernel) using the automated test script?
> 
> Thanks for sharing the script! I guess my approach with croontab already
> allowed me to verify your observations, right?
> 
> Now, what about the "swiotlb=noforce", does it still work for you as a
> workaround for this issue? Do you mind in sharing your .config with me,
> so I can try with your exact config to see if instead initrd
> "corruption", I'm presented with the same exact signature you got?
> 
> Thanks again, I appreciate a lot your collaboration =)
> Cheers,
> 
> 
> Guilherme
> 
> 
> 
>> Thanks.
>>
>> Regards,
>> Bhupesh
>>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
