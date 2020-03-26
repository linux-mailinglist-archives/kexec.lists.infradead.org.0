Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E1193ABA
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 09:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4RgFIVbISXgyNVqe8bWlkKcfeVVWjD7WnEPByeCybA=; b=YB5tTp0IaRco3r
	Vszn/2xQSTgBVgapk6TYi4q5HI6dNs2QGWMnRrLn10vspKbk9CkUGH+0ateS/QTXQ4Q9gLqLdDSEn
	UfgiQJCKAJaDF84CMtt3lz8zVdspHMQ4j2RiEXpRE3RafPKKxJmYR+xOZy7S1+jceon3af6JskSmO
	rTNotn/ik0UYN4iLB2e4SdKVIF3FNC3FLqwvX3Ndla8w24d8xixux8ZduXBk9Xvb2bqEP4KMNfjqi
	R9neg7Dkzq9b6hHL+YnnM2s5SqaAvW6klM+dUDfN2JJ6Uc6wxPIteZxXIecuupduBq9zdN5FJprho
	0nIG3NFFAR9XtCIjlo4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNlr-0004k2-MD; Thu, 26 Mar 2020 08:21:47 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNln-0004j1-3Y
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 08:21:45 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200326082133epoutp045a4c8ef6b7750ca7152dd6c56ebd064c~-zOizcxsg2931629316epoutp04K
 for <kexec@lists.infradead.org>; Thu, 26 Mar 2020 08:21:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200326082133epoutp045a4c8ef6b7750ca7152dd6c56ebd064c~-zOizcxsg2931629316epoutp04K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585210893;
 bh=oe8Z69HtB3Zqt/8deYHawk8D9xP6EWwaTBe3VcUF+10=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fBw/6nI23F1ykfRoRvZLnZ9X1Fu7VvXIj0ISymPEV/UL3u4T1IfREXczuUU++suSq
 rPyLc3/xzQEt5uJ23xAdvymfwXuHsb/+Rs3zrfpSQDXf6JcKxFAWg8WKZTS4GKRMUn
 5dKGOENDvD73iwsI9ni9+3FIsUA+b8UrzpBUjNAw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200326082133epcas1p29ebf5e171201f28115c057e40df70173~-zOiazuUY0893608936epcas1p2e;
 Thu, 26 Mar 2020 08:21:33 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.162]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48nycq13LPzMqYkx; Thu, 26 Mar
 2020 08:21:31 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 5B.C2.04074.B066C7E5; Thu, 26 Mar 2020 17:21:31 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200326082130epcas1p1106747310b04a175932ebe89dd7c86d6~-zOgDHgAS0481304813epcas1p1g;
 Thu, 26 Mar 2020 08:21:30 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200326082130epsmtrp1efe8764af22b957da6bcc4ccef0d9165~-zOgBtYlv1726217262epsmtrp1b;
 Thu, 26 Mar 2020 08:21:30 +0000 (GMT)
X-AuditID: b6c32a39-58bff70000000fea-ab-5e7c660bb297
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 10.B2.04024.A066C7E5; Thu, 26 Mar 2020 17:21:30 +0900 (KST)
Received: from [10.253.104.82] (unknown [10.253.104.82]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200326082128epsmtip13272af46ba79849f06ef4517e9691fca~-zOecDbX70940109401epsmtip1O;
 Thu, 26 Mar 2020 08:21:28 +0000 (GMT)
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
To: Greg KH <gregkh@linuxfoundation.org>
From: Jaewon Kim <jaewon31.kim@samsung.com>
Message-ID: <5E7C6608.5080500@samsung.com>
Date: Thu, 26 Mar 2020 17:21:28 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <20200324131916.GA2500287@kroah.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrFJsWRmVeSWpSXmKPExsWy7bCmvi53Wk2cwfNHzBbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S0WP7uNKPF7tNfmSxW7vnBZDHl11Jmi83fO9gsLu+aw2Zxb81/Votl
 X9+zW2xomcVu8WjCJCaLU3c/s1vMbuxjdBD02DnrLrvHplWdbB6bPk1i97hzbQ+bx4kZv1k8
 9s9dw+6xeUm9x/t9V9k8ziw4wu6x89NmVo/Pm+QCuKNybDJSE1NSixRS85LzUzLz0m2VvIPj
 neNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOAnlJSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX
 2CqlFqTkFBgaFOgVJ+YWl+al6yXn51oZGhgYmQJVJuRkPJjYzVrwzaZiwpP1rA2Mewy7GDk5
 JARMJGZ0TmXtYuTiEBLYwSjxZuJpRgjnE6PEzCNN7BDON0aJLVMWsMC0tL+ZA1W1l1Hi55NT
 zBDOW0aJbbP2M4NUCQu4Sfzbep4NxBYR0JB4efQWC0gRs8B3Jonji78wgSTYBLQl3i+YxApi
 8wpoSRxfdAisgUVAVWLqxulgg0QFIiR2zP3ICFEjKHFy5hOwMzgFDCVub1oEVs8sIC/RvHU2
 2BUSAsfYJd7sP8oGcauLxN8ryxghbGGJV8e3sEPYUhIv+9vYIRqaGSXeztzMCOG0MErc3dQL
 1WEs0dtzAWgsB9AKTYn1u/QhwooSO3/PZYTYzCfx7msPK0iJhACvREebEESJmkTLs6+sELaM
 xN9/z6BKPCTO/1MDCQsJ7GaW2Ds1dAKjwiwkr81C8s4shL0LGJlXMYqlFhTnpqcWGxaYIsfx
 JkZwOtey3MF47JzPIUYBDkYlHt4NltVxQqyJZcWVuYcYJTiYlUR4n0bWxAnxpiRWVqUW5ccX
 leakFh9iNAWG9kRmKdHkfGCuySuJNzQ1MjY2tjAxMzczNVYS5516PSdOSCA9sSQ1OzW1ILUI
 po+Jg1OqgXF/8cnFX40Wlv/5F7sv8enlTWrfit78LLX7L7A8y6lmV6jWpfS5uxKUU3cvOfWs
 uuTirn/vuKd6bDZy/cWnFy3d/Ft3/Y7i1O/zDvom6VQf9ZSwDJmTvHl3QckHltWP629rOS1K
 NRQpvX6Qy1pEU0/z278v2aeqXgg/XXw6V5uxh4v56PvoLQeUWIozEg21mIuKEwFC16aj/QMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7bCSnC5XWk2cwd8pyhbTG70s5qxfw2Zx
 /sEvNovmxevZLLo3z2S0WP7uNKPF7tNfmSxW7vnBZDHl11Jmi83fO9gsLu+aw2Zxb81/Votl
 X9+zW2xomcVu8WjCJCaLU3c/s1vMbuxjdBD02DnrLrvHplWdbB6bPk1i97hzbQ+bx4kZv1k8
 9s9dw+6xeUm9x/t9V9k8ziw4wu6x89NmVo/Pm+QCuKO4bFJSczLLUov07RK4Mh5M7GYt+GZT
 MeHJetYGxj2GXYycHBICJhLtb+YwdjFycQgJ7GaUmLKohw0iISPx5vxTli5GDiBbWOLw4WKI
 mteMEr8n3gWrERZwk/i39TyYLSKgIfHy6C0WEBtoELPEwjMcIA3MAt+ZJC71HQIrYhPQlni/
 YBIriM0roCVxfBFEnEVAVWLqxunMILaoQITE6nXXmCFqBCVOznwCNpRTwFDi9qZFYPXMAuoS
 f+ZdYoaw5SWat85mnsAoOAtJyywkZbOQlC1gZF7FKJlaUJybnltsWGCYl1quV5yYW1yal66X
 nJ+7iREco1qaOxgvL4k/xCjAwajEw7vBsjpOiDWxrLgy9xCjBAezkgjv08iaOCHelMTKqtSi
 /Pii0pzU4kOM0hwsSuK8T/OORQoJpCeWpGanphakFsFkmTg4pRoYHaZn1H/Q0952vDls4t+L
 cpsUWy32dVZaCBzh+/ZeJsDuLfslHfP553U1/C3/u3aedyxZr50es+Ta3Rd8mgGLmH41v+yL
 +FC0aJ7OwturvkT8OPLmwykJA/6W1xYZ1q93eXJ4n7YJfP0nkM/O6cifSwfun1h2W8J6e1q6
 5kcrAe936cdZy15WK7EUZyQaajEXFScCAOnZ5WvNAgAA
X-CMS-MailID: 20200326082130epcas1p1106747310b04a175932ebe89dd7c86d6
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com> <5E7A02BC.7020803@samsung.com>
 <20200324131916.GA2500287@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_012143_328019_5FA9140E 
X-CRM114-Status: GOOD (  32.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, adobriyan@gmail.com, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiAyMDIw64WEIDAz7JuUIDI07J28IDIyOjE5LCBHcmVnIEtIIHdyb3RlOgo+IE9uIFR1ZSwg
TWFyIDI0LCAyMDIwIGF0IDA5OjUzOjE2UE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4+Cj4+
IE9uIDIwMjDrhYQgMDPsm5QgMjTsnbwgMjA6NDYsIEdyZWcgS0ggd3JvdGU6Cj4+PiBPbiBUdWUs
IE1hciAyNCwgMjAyMCBhdCAwODozNzozOFBNICswOTAwLCBKYWV3b24gS2ltIHdyb3RlOgo+Pj4+
IE9uIDIwMjDrhYQgMDPsm5QgMjTsnbwgMTk6MTEsIEdyZWcgS0ggd3JvdGU6Cj4+Pj4+IE9uIFR1
ZSwgTWFyIDI0LCAyMDIwIGF0IDA2OjExOjE3UE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4+
Pj4+PiBPbiAyMDIw64WEIDAz7JuUIDIz7J28IDE4OjUzLCBHcmVnIEtIIHdyb3RlOgo+Pj4+Pj4+
PiAraW50IHJlZ2lzdGVyX21lbWluZm9fZXh0cmEoYXRvbWljX2xvbmdfdCAqdmFsLCBpbnQgc2hp
ZnQsIGNvbnN0IGNoYXIgKm5hbWUpCj4+Pj4+Pj4+ICt7Cj4+Pj4+Pj4+ICsJc3RydWN0IG1lbWlu
Zm9fZXh0cmEgKm1lbWluZm8sICptZW10ZW1wOwo+Pj4+Pj4+PiArCWludCBsZW47Cj4+Pj4+Pj4+
ICsJaW50IGVycm9yID0gMDsKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCW1lbWluZm8gPSBremFsbG9j
KHNpemVvZigqbWVtaW5mbyksIEdGUF9LRVJORUwpOwo+Pj4+Pj4+PiArCWlmICghbWVtaW5mbykg
ewo+Pj4+Pj4+PiArCQllcnJvciA9IC1FTk9NRU07Cj4+Pj4+Pj4+ICsJCWdvdG8gb3V0Owo+Pj4+
Pj4+PiArCX0KPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCW1lbWluZm8tPnZhbCA9IHZhbDsKPj4+Pj4+
Pj4gKwltZW1pbmZvLT5zaGlmdF9mb3JfcGFnZSA9IHNoaWZ0Owo+Pj4+Pj4+PiArCXN0cm5jcHko
bWVtaW5mby0+bmFtZSwgbmFtZSwgTkFNRV9TSVpFKTsKPj4+Pj4+Pj4gKwlsZW4gPSBzdHJsZW4o
bWVtaW5mby0+bmFtZSk7Cj4+Pj4+Pj4+ICsJbWVtaW5mby0+bmFtZVtsZW5dID0gJzonOwo+Pj4+
Pj4+PiArCXN0cm5jcHkobWVtaW5mby0+bmFtZV9wYWQsIG1lbWluZm8tPm5hbWUsIE5BTUVfQlVG
X1NJWkUpOwo+Pj4+Pj4+PiArCXdoaWxlICgrK2xlbiA8IE5BTUVfQlVGX1NJWkUgLSAxKQo+Pj4+
Pj4+PiArCQltZW1pbmZvLT5uYW1lX3BhZFtsZW5dID0gJyAnOwo+Pj4+Pj4+PiArCj4+Pj4+Pj4+
ICsJc3Bpbl9sb2NrKCZtZW1pbmZvX2xvY2spOwo+Pj4+Pj4+PiArCWxpc3RfZm9yX2VhY2hfZW50
cnlfcmN1KG1lbXRlbXAsICZtZW1pbmZvX2hlYWQsIGxpc3QpIHsKPj4+Pj4+Pj4gKwkJaWYgKG1l
bXRlbXAtPnZhbCA9PSB2YWwpIHsKPj4+Pj4+Pj4gKwkJCWVycm9yID0gLUVJTlZBTDsKPj4+Pj4+
Pj4gKwkJCWJyZWFrOwo+Pj4+Pj4+PiArCQl9Cj4+Pj4+Pj4+ICsJfQo+Pj4+Pj4+PiArCWlmICgh
ZXJyb3IpCj4+Pj4+Pj4+ICsJCWxpc3RfYWRkX3RhaWxfcmN1KCZtZW1pbmZvLT5saXN0LCAmbWVt
aW5mb19oZWFkKTsKPj4+Pj4+Pj4gKwlzcGluX3VubG9jaygmbWVtaW5mb19sb2NrKTsKPj4+Pj4+
PiBJZiB5b3UgaGF2ZSBhIGxvY2ssIHdoeSBhcmUgeW91IG5lZWRpbmcgcmN1Pwo+Pj4+Pj4gSSB0
aGluayBfcmN1IHNob3VsZCBiZSByZW1vdmVkIG91dCBvZiBsaXN0X2Zvcl9lYWNoX2VudHJ5X3Jj
dS4KPj4+Pj4+IEJ1dCBJJ20gY29uZnVzZWQgYWJvdXQgd2hhdCB5b3UgbWVhbnQuCj4+Pj4+PiBJ
IHVzZWQgcmN1X3JlYWRfbG9jayBvbiBfX21lbWluZm9fZXh0cmEsCj4+Pj4+PiBhbmQgSSB0aGlu
ayBzcGluX2xvY2sgaXMgYWxzbyBuZWVkZWQgZm9yIGFkZGl0aW9uIGFuZCBkZWxldGlvbiB0byBo
YW5kbGUgbXVsdGlwbGUgbW9kaWZpZXJzLgo+Pj4+PiBJZiB0aGF0J3MgdGhlIGNhc2UsIHRoZW4g
dGhhdCdzIGZpbmUsIGl0IGp1c3QgZGlkbid0IHNlZW0gbGlrZSB0aGF0IHdhcwo+Pj4+PiBuZWVk
ZWQuICBPciBJIG1pZ2h0IGhhdmUgYmVlbiByZWFkaW5nIHlvdXIgcmN1IGxvZ2ljIGluY29ycmVj
dGx5Li4uCj4+Pj4+Cj4+Pj4+Pj4+ICsJaWYgKGVycm9yKQo+Pj4+Pj4+PiArCQlrZnJlZShtZW1p
bmZvKTsKPj4+Pj4+Pj4gK291dDoKPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArCXJldHVybiBlcnJvcjsK
Pj4+Pj4+Pj4gK30KPj4+Pj4+Pj4gK0VYUE9SVF9TWU1CT0wocmVnaXN0ZXJfbWVtaW5mb19leHRy
YSk7Cj4+Pj4+Pj4gRVhQT1JUX1NZTUJPTF9HUEwoKT8gIEkgaGF2ZSB0byBhc2sgOikKPj4+Pj4+
IEkgY2FuIHVzZSBFWFBPUlRfU1lNQk9MX0dQTC4KPj4+Pj4+PiB0aGFua3MsCj4+Pj4+Pj4KPj4+
Pj4+PiBncmVnIGstaAo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+IEhlbGxvCj4+Pj4+PiBUaGFuayB5
b3UgZm9yIHlvdXIgY29tbWVudC4KPj4+Pj4+Cj4+Pj4+PiBCeSB0aGUgd2F5IHRoZXJlIHdhcyBu
b3QgcmVzb2x2ZWQgZGlzY3Vzc2lvbiBvbiB2MSBwYXRjaCBhcyBJIG1lbnRpb25lZCBvbiBjb3Zl
ciBwYWdlLgo+Pj4+Pj4gSSdkIGxpa2UgdG8gaGVhciB5b3VyIG9waW5pb24gb24gdGhpcyAvcHJv
Yy9tZW1pbmZvX2V4dHJhIG5vZGUuCj4+Pj4+IEkgdGhpbmsgaXQgaXMgdGhlIHByb3BhZ2F0aW9u
IG9mIGFuIG9sZCBhbmQgb2Jzb2xldGUgaW50ZXJmYWNlIHRoYXQgeW91Cj4+Pj4+IHdpbGwgaGF2
ZSB0byBzdXBwb3J0IGZvciB0aGUgbmV4dCAyMCsgeWVhcnMgYW5kIHlldCBub3QgYWN0dWFsbHkg
YmUKPj4+Pj4gdXNlZnVsIDopCj4+Pj4+Cj4+Pj4+PiBEbyB5b3UgdGhpbmsgdGhpcyBpcyBtZWFu
aW5nZnVsIG9yIGNhbm5vdCBjby1leGlzdCB3aXRoIG90aGVyIGZ1dHVyZQo+Pj4+Pj4gc3lzZnMg
YmFzZWQgQVBJLgo+Pj4+PiBXaGF0IHN5c2ZzLWJhc2VkIEFQST8KPj4+PiBQbGVhc2UgcmVmZXIg
dG8gbWFpbCB0aHJlYWQgb24gdjEgcGF0Y2ggc2V0IC0gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXll
LmNvbS91cmw/az0xNmUzYWNjYy00YjJmNjU0OC0xNmUyMjc4My0wY2M0N2FhOGY1YmEtOTM1ZmU4
MjhhYzJmNjY1NiZ1PWh0dHBzOi8vbGttbC5vcmcvbGttbC9mYW5jeS8yMDIwLzMvMTAvMjEwMgo+
Pj4+IGVzcGVjaWFsbHkgZGlzY3Vzc2lvbiB3aXRoIExlb24gUm9tYW5vdnNreSBvbiBodHRwczov
L3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPTc0MjA4ZWQ5LTI5ZWM0NzVkLTc0MjEwNTk2LTBj
YzQ3YWE4ZjViYS0wYmQ0ZWY0ODkzMWZlYzk1JnU9aHR0cHM6Ly9sa21sLm9yZy9sa21sL2ZhbmN5
LzIwMjAvMy8xNi8xNDAKPj4+IEkgcmVhbGx5IGRvIG5vdCB1bmRlcnN0YW5kIHdoYXQgeW91IGFy
ZSByZWZlcnJpbmcgdG8gaGVyZSwgc29ycnkuICAgSSBkbwo+Pj4gbm90IHNlZSBhbnkgc3lzZnMt
YmFzZWQgY29kZSBpbiB0aGF0IHRocmVhZC4KPj4gU29ycnkuIEkgYWxzbyBkaWQgbm90IHNlZSBh
Y3R1YWwgY29kZS4KPj4gSGVsbG8gTGVvbiBSb21hbm92c2t5LCBjb3VsZCB5b3UgZWxhYm9yYXRl
IHlvdXIgcGxhbiByZWdhcmRpbmcgc3lzZnMgc3R1ZmY/Cj4+PiBBbmQgdHJ5IHRvIHVzZSBsb3Jl
Lmtlcm5lbC5vcmcsIGxrbWwub3JnIGRvZXNuJ3QgYWx3YXlzIHdvcmsgYW5kIHdlIGhhdmUKPj4+
IG5vIGNvbnRyb2wgb3ZlciB0aGF0IDooCj4+Pgo+Pj4+PiBJIHN0aWxsIGRvbid0IGtub3cgX3do
eV8geW91IHdhbnQgdGhpcy4gIFRoZSBJT04gc3R1ZmYgaXMgbm90IG5lZWRlZCBhcwo+Pj4+PiB0
aGF0IGNvZGUgaXMgYWJvdXQgdG8gYmUgZGVsZXRlZCwgc28gd2hvIGVsc2Ugd2FudHMgdGhpcz8g
IFdoYXQgaXMgdGhlCj4+Pj4+IHVzZS1jYXNlIGZvciBpdCB0aGF0IGlzIHNvIGRlc3BlcmF0ZWx5
IG5lZWRlZCB0aGF0IHBhcnNpbmcKPj4+Pj4geWV0LWFub3RoZXItcHJvYyBmaWxlIGlzIGdvaW5n
IHRvIHNvbHZlIHRoZSBwcm9ibGVtPwo+Pj4+IEluIG15IEFuZHJvaWQgZGV2aWNlLCB0aGVyZSBh
cmUgZ3JhcGhpYyBkcml2ZXIgbWVtb3J5LCB6c21hbGxvYyBtZW1vcnkgZXhjZXB0IElPTi4KPj4+
IE9rLCBzbyB3aGF0IGRvZXMgQW5kcm9pZCBoYXZlIHRvIGRvIHdpdGggdGhpcz8KPj4gU29tZSBk
cml2ZXIgaW4gQW5kcm9pZCBwbGF0Zm9ybSBtYXkgdXNlIG15IEFQSSB0byBzaG93IGl0cyBtZW1v
cnkgdXNhZ2UuCj4gSSBkbyBub3QgdW5kZXJzdGFuZCB3aGF0IHRoaXMgbWVhbnMuCj4KPj4+PiBJ
IGRvbid0IGtub3cgb3RoZXIgY2FzZXMgaW4gb3RoZXIgcGxhdGZvcm0uCj4+Pj4gTm90IGRlc3Bl
cmF0ZWx5IG5lZWRlZCBidXQgSSB0aGluayB3ZSBuZWVkIG9uZSB1c2Vyc3BhY2Uga25vYiB0byBz
ZWUgb3ZlcmFsbCBoaWRkZW4gaHVnZSBtZW1vcnkuCj4+PiBXaHk/ICBXaG8gd2FudHMgdGhhdD8g
IFdoYXQgd291bGQgdXNlcnNwYWNlIGRvIHdpdGggdGhhdD8gIEFuZCB3aGF0Cj4+PiBleGFjdGx5
IGRvIHlvdSB3YW50IHRvIHNob3c/Cj4+Pgo+Pj4gSXMgdGhpcyBqdXN0IGEgZGVidWdnaW5nIHRo
aW5nPyAgVGhlbiB1c2UgZGVidWdmcyBmb3IgdGhhdCwgbm90IHByb2MuCj4+PiBJc24ndCB0aGF0
IHdoYXQgdGhlIERSTSBkZXZlbG9wZXJzIGFyZSBzdGFydGluZyB0byBkbz8KPj4+Cj4+Pj4gQWRk
aXRpb25hbGx5IEknZCBsaWtlIHRvIHNlZSBhbGwgdGhvc2UgaGlkZGVuIG1lbW9yeSBpbiBPdXRP
Zk1lbW9yeSBsb2cuCj4+PiBIb3cgaXMgYW55dGhpbmcgaGlkZGVuLCBjYW4ndCB5b3Ugc2VlIGl0
IGluIHRoZSBzbGFiIGluZm9ybWF0aW9uPwo+Pj4KPj4gTGV0IG1lIGV4cGxhaW4gbW9yZS4KPj4K
Pj4gMC4gc2xhYgo+PiBBcyBJIHNhaWQgaW4gY292ZXIgcGFnZSwgdGhpcyBpcyBub3QgZm9yIG1l
bW9yeSBhbGxvY2F0ZWQgYnkgc2xhYi4KPiBHcmVhdCwgdGhlbiBoYXZlIHRoZSBzdWJzeXN0ZW0g
dGhhdCBhbGxvY2F0ZXMgc3VjaCBtZW1vcnksIGJlIHRoZSB0aGluZwo+IHRoYXQgZXhwb3J0cyB0
aGUgaW5mb3JtYXRpb24uICBEcml2ZXJzICJvbiB0aGVpciBvd24iIGRvIG5vdCBncmFiIGFueQo+
IG1lbW9yeSB3aXRob3V0IGFza2luZyBmb3IgaXQgZnJvbSBvdGhlciBwYXJ0cyBvZiB0aGUga2Vy
bmVsLgo+Cj4gTW9kaWZ5IHRob3NlICJvdGhlciBwYXJ0cyIsIHRoaXMgaXNuJ3QgYSBkcml2ZXIt
c3BlY2lmaWMgdGhpbmcgYXQgYWxsLgo+Cj4gU28sIHdoYXQgIm90aGVyIHBhcnRzIiBhcmUgaW52
b2x2ZWQgaGVyZT8KPgo+PiBJJ2QgbGlrZSB0byBrbm93IHdoZXJlIGh1Z2UgbWVtb3J5IGhhcyBn
b25lLgo+PiBUaG9zZSBhcmUgZGlyZWN0bHkgYWxsb2NhdGVkIGJ5IGFsbG9jX3BhZ2VzIGluc3Rl
YWQgb2Ygc2xhYi4KPj4gL3Byb2Mvc2xhYmluZm8gZG9lcyBub3Qgc2hvdyB0aGlzIGluZm9ybWF0
aW9uLgo+IFdoeSBpc24ndCBhbGxvY19wYWdlcyBpbmZvcm1hdGlvbiBleHBvcnRlZCBhbnl3aGVy
ZT8gIFdvcmsgb24gdGhhdC4KPgo+PiAxLiAvcHJvYy9tZW1pbmZvX2V4dHJhCj4+IC9wcm9jL21l
bWluZm9fZXh0cmEgY291bGQgYmUgZGVidWdnaW5nIHRoaW5nIHRvIHNlZSBtZW1vcnkgc3RhdHVz
IGF0IGEgY2VydGFpbiB0aW1lLgo+IElmIGl0IGlzIGRlYnVnZ2luZywgdGhlbiB1c2UgZGVidWdm
cy4KPgo+PiBCdXQgaXQsIEkgdGhpbmssIGlzIGFsc28gYmFzaWMgaW5mb3JtYXRpb24gcmF0aGVy
IHRoYW4ganVzdCBmb3IgZGVidWdnaW5nLgo+IFdobyB3b3VsZCB1c2UgdGhhdCBpbmZvcm1hdGlv
biBmb3IgYW55dGhpbmcgZXhjZXB0IGRlYnVnZ2luZz8KPgo+PiBJdCBpcyBzaW1pbGFyIHdpdGgg
L3Byb2MvbWVtaW5mbyB3aGljaCBpcyBpbiBwcm9jZnMgaW5zdGVhZCBvZiBkZWJ1Z2ZzLgo+IG1l
bWluZm8gaXMgb2xkZXIgdGhhbiBkZWJ1Z2ZzIGFuZCBzeXNmcywgY2FuJ3QgY2hhbmdlIHRoYXQg
dG9kYXkuCj4KPj4gMi4gb29tIGxvZwo+PiBvb20gbG9nIGluIHNob3dfbWVtIGlzIG1vcmUgdGhh
biBqdXN0IGRlYnVnZ2luZy4KPiBXaHk/ICBXaG8gc2VlcyB0aGlzPwo+Cj4+IEFzIGV4aXN0aW5n
IG9vbSBsb2cgc2hvd3MgbXVjaCBtZW1vcnkgaW5mb3JtYXRpb24sIEkgdGhpbmsgd2UgbmVlZCB0
aGUgaGlkZGVuIG1lbW9yeSBpbmZvLgo+PiBXaXRob3V0IHRoZXNlIGluZm9ybWF0aW9uLCB3ZSBk
byBOT1Qga25vdyBvb20gcmVhc29uIGJlY2F1c2Ugb3RoZXIgdHJhZGl0aW9uYWwgc3RhdHMgYXJl
IG5vdCBlbm91Z2guCj4gV2h5IG5vdD8gIEtlcm5lbCB1c2VycyBvZiBtZW1vcnkgc2hvdWxkbid0
IGJlIHRyaWdnZXJpbmcgT09NIGV2ZW50cy4KPgo+Cj4+Pj4gVGhpcyBpcyB1c2VmdWwgdG8gZ2V0
IGNsdWUgdG8gZmluZCBtZW1vcnkgaG9nZ2VyLgo+Pj4+IGkuZS4pIHNob3dfbWVtIG9uIG9vbQo+
Pj4+IDw2PlsgIDQyMC44NTY0MjhdICBNZW0tSW5mbzoKPj4+PiA8Nj5bICA0MjAuODU2NDMzXSAg
SW9uU3lzdGVtSGVhcDozMjgxM2tCIFpzUGFnZXM6NDQxMTRrQiBHcmFwaGljRHJpdmVyOjoxMzA5
MWtCCj4+Pj4gPDY+WyAgNDIwLjg1NjQ1MF0gIGFjdGl2ZV9hbm9uOjk1NzIwNSBpbmFjdGl2ZV9h
bm9uOjE1OTM4MyBpc29sYXRlZF9hbm9uOjAKPj4+IFNvIHdoYXQgZG9lcyB0aGlzIHNob3cgeW91
PyAgVGhhdCBzb21lb25lIGlzIHRha2lnbiBhIHRvbiBvZiBJT04gbWVtb3J5Cj4+PiBmb3Igc29t
ZSB1bmtub3duIHVzZT8gIFdoYXQgY2FuIHlvdSBkbyB3aXRoIHRoYXQ/ICBXaGF0IHdvdWxkIHlv
dSBkbwo+Pj4gd2l0aCB0aGF0Pwo+PiBXZSBtYXkgbm90IGtub3cgZXhhY3QgbWVtb3J5IG93bmVy
LiBCdXQgd2UgY2FuIG5hcnJvdyBkb3duLgo+PiBBbnl3YXkgSSB0aGluayB0aGlzIGlzIG1lYW5p
bmdmdWwgaW5zdGVhZCBvZiBubyBjbHVlLgo+IEFnYWluLCB3b3JrIG9uIHRoZSBzdWJzeXN0ZW1z
IHRoYXQgYWN0dWFsbHkgYWxsb2NhdGUgdGhlIG1lbW9yeSwgbm90Cj4gZHJpdmVycy4gIEFuZCBp
ZiB5b3Ugd2FudCB0byBtZXNzIHdpdGggZHJpdmVycywgZG8gaXQgaW4gYQo+IGRldmljZS1zcGVj
aWZpYyB3YXksIG5vdCBhIGRyaXZlci1zcGVjaWZpYyB3YXkuCj4KPj4+IEFuZCBtZW1vcnkgaXMg
YWxtb3N0IG5ldmVyIGFzc2lnbmVkIHRvIGEgImRyaXZlciIsIGl0IGlzIGFzc2lnbmVkIHRvIGEK
Pj4+ICJkZXZpY2UiIHRoYXQgdXNlcyBpdC4gIERyaXZlcnMgY2FuIGhhbmRsZSBtdWx0aXBsZSBk
ZXZpY2VzIGF0IHRoZSBzYW1lCj4+PiB0aW1lLCBzbyB3aHkgd291bGQgeW91IGJyZWFrIHRoaXMg
ZG93biBieSBkcml2ZXJzPyAgQXJlIHlvdSBhc3N1bWluZwo+Pj4gdGhhdCBhIGRyaXZlciBvbmx5
IHRhbGtzIHRvIG9uZSBwaWVjZSBvZiBoYXJkd2FyZT8KPj4gWWVzIGEgZHJpdmVyIG1heSBzdXBw
b3J0IHNldmVyYWwgZGV2aWNlcy4gSSBkb24ndCBrbm93IGlmIGl0IHNhbWUgb24gYW4gZW1iZWRk
ZWQgZGV2aWNlLgo+IFdoeSB3b3VsZG4ndCBpdCBiZT8gIElzIHRoaXMgbmV3IGludGVyZmFjZSBz
b21laG93IG9ubHkgYWNjZXB0YWJsZSBmb3IKPiBzeXN0ZW1zIHdpdGggb25lLWRldmljZS1wZXIt
ZHJpdmVyPyAgSWYgc28sIHRoYXQncyBub3QgZ29pbmcgdG8gd29yayBhdAo+IGFsbC4KPgo+PiBB
bnl3YXkgSSB0aGluayB0aGUgaWRlYSB3b3JrcyBldmVuIGZvciBzZXZlcmFsIGRldmljZXMsIGFs
dGhvdWdoIHRoZSBkcml2ZXIgc2hvdWxkCj4+IGRpc3Rpbmd1aXNoIG1lbW9yeSB1c2FnZSBmb3Ig
ZWFjaCBkZXZpY2UgYW5kIHNob3VsZCByZWdpc3RlciBlYWNoIG1lbW9yeSBzdGF0Lgo+IEFuZCBo
b3cgd291bGQgdGhhdCBoYXBwZW4/Cj4KPiB0aGFua3MsCj4KPiBncmVnIGstaAo+Cj4KVGhhbmsg
eW91IGZvciB5b3UgZ3V5cycgY29tbWVudApMZXQgbWUgY29uc2lkZXIgbW9yZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
