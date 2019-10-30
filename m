Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D711E9EBB
	for <lists+kexec@lfdr.de>; Wed, 30 Oct 2019 16:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7m9GtzNWOJJXRLZLOGS2qHn1vrQagt/d+i7FIJIZOg8=; b=n6klK3W24DJPvfiw9mqxTJOr0
	BJj/AVGo3bd48dx7pWtnsyVlzIlLUuCi0JmUgILT5gdXUqBNCq+cM1NGl+iZ4uEoc61anGX1dPjSb
	Yuc57JL1VVZJAPWlnkshu5676fhJPGzHqFlrD6l/zJWMAoluV6chFHjo8zQdZireVyoTf6e4cXGfl
	zUvFPbhJ95S9WqIplFZxibrfKkJlXrnSamPEfFbFCFdLawZWppCphYDwht3n/gil2IWyAmoyuq40K
	SANESc/WkHg7vIM2OFPRSZ07QfjBnNqr5/yadOdVPjIILGLaTk+yWKfkKVytRjgbMdst9nuG55Efl
	9SN3UAKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpkL-0001H0-0W; Wed, 30 Oct 2019 15:18:53 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpkG-0001EC-J3
 for kexec@lists.infradead.org; Wed, 30 Oct 2019 15:18:50 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9UF4MeZ021863;
 Wed, 30 Oct 2019 15:18:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=LxU5ljjipiGuSmXisbCXc22S7QpwRLePGiDq28bfRrY=;
 b=lwjoyqUeJ6k9Tlo3UOtsMqLkLAhP8PILozGjGSHIRCLLfBmA3lZnlCv6pXaaY2Pj3NXu
 PII1cMg1ingACSoX3j2VqUK4/015rpMDWdPb79BdnXwgMcqlAIIk/zS6G+q7nY10vhf9
 OrhrBWGbPAMv1L71yr1mRDFoWDlbqYQEqM6TFaz2edjekCK9sT0lPTkNTKzKnqFSHzSS
 eU4NZWog119iG4LYO4t2Tae1Kvxnl0dpe/Ikoi8vXXyAK/kOMTF+WSLFj9/iA5wv4SiJ
 wTYelB/b0M/lz9zZU2YdDxWKzNCy4Jnq9GcODYuLGq/UsP45ZttiJaX87NwJbX7Qk1rA Yw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2vxwhfn0e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2019 15:18:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9UFFTtb139491;
 Wed, 30 Oct 2019 15:18:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2vxwj6v1dr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2019 15:18:21 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9UFIJ5i014732;
 Wed, 30 Oct 2019 15:18:19 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 30 Oct 2019 08:18:19 -0700
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Bhupesh Sharma <bhsharma@redhat.com>
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
 <CACi5LpOexc5ss6DRHOSWJeSAwwGPQ55z1XiFqenGzY1rLkzeqA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03594125@BPXM09GP.gisp.nec.co.jp>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <d913b734-3896-9211-acc3-8be21f15ed1f@Oracle.com>
Date: Wed, 30 Oct 2019 10:18:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03594125@BPXM09GP.gisp.nec.co.jp>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910300142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910300142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_081848_764255_90831B94 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMTAvMzAvMTkgMTA6MDggQU0sIEthenVoaXRvIEhhZ2lvIHdyb3RlOgo+IEhpIEJodXBlc2gs
Cj4gCj4gT0ssIHRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93IHRoYXQgaW4geW91ciBob2xpZGF5
cy4gSGF2ZSBnb29kIG9uZXMuCj4gSSBqdXN0IHRob3VnaHQgdGhhdCBpdCBtaWdodCBiZSBnb29k
IHRvIHNoYXJlIG91ciB1bmRlcnN0YW5kaW5nIGJlZm9yZQo+IHBvc3RpbmcgYSBrZXJuZWwgcGF0
Y2ggc28gdGhhdCBJIGNhbiBkbyBzb21ldGhpbmcgdG8gc3VwcG9ydCB5b3UgaWYKPiBuZWVkIGJl
Lgo+IAo+IAo+IEhpIEpvaG4sCj4gCj4gWW91IHNlZSB0aGF0IGVycm9yIHdpdGggbXkgdGVzdCBw
YXRjaCwgd2hpY2ggaXMgb25seSBmb3IgdGVzdGluZyB0aG91Z2gsCj4gYXMgSSB3cm90ZSBiZWxv
dwo+IAoKCiAgSGksCgogICAgSWYgdGhlcmUgYXJlIGNvcnJlc3BvbmRpbmcga2VybmVsIHBhdGNo
ZXMgYmVpbmcgY29uc2lkZXJlZCB0byBtYWtlIAptYWtlZHVtcGZpbGUgd29yayAgb24gdjggYW5k
IHY4LnggIHN5c3RlbXMgSSB3b3VsZCBiZSBpbnRlcmVzdGluZyBpbiAKdGVzdGluZyB0aG9zZSBh
bHNvLgoKCm1ha2VkdW1wZmlsZSBzaG91bGQgYmUgYWJsZSB0byB3b3JrIHdpdGggYSB2YXJpZXR5
IG9mIFZBYml0cyBhcyA0OCwgb3IgCjUyIHNldHRpbmdzLgoKCgo+Pj4gQW5kIHdyb3RlIGEgdmVy
eSBkcmFmdCBwYXRjaCwgd2hpY2ggd29ya3Mgb24gYSA1LjQtcmM0IGtlcm5lbCB0aGF0Cj4+PiBJ
IG1vZGlmaWVkIHRvIGhhdmUgTlVNQkVSKHZhYml0c19hY3R1YWwpIGFuZCBOVU1CRVIoTUFYX1BI
WVNNRU1fQklUUyksCj4gCj4gdGhhdCBwYXRjaCByZXF1aXJlcyBhIGtlcm5lbCBmaXggdG8gaGF2
ZSB0aGVzZSBpbiB2bWNvcmVpbmZvLgo+IERpZCB5b3UgdHJ5IGl0Pwo+IAo+IFRoYW5rcywKPiBL
YXp1Cj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEhpIEthenUsCj4+Cj4+IFNv
cnJ5IGZvciB0b3AgcG9zdGluZywgYnV0IEkgYW0gb24gbGVhdmUgZm9yIERpd2FsaSBIb2xpZGF5
cyBhbmQgd2lsbAo+PiByZXR1cm4gdG8gdGhlIG9mZmljZSBpbiBhIGNvdXBsZSBvZiBkYXlzLgo+
Pgo+PiBJIGhhdmUgdGhlIHNvbHV0aW9uL3BhdGNoc2V0IHJlYWR5IGFuZCBJIGp1c3QgbmVlZCB0
byBmaW5pc2ggdGhlCj4+IGNvbW1pdCBtZXNzYWdlcyB0byBtYWtlIHN1cmUgdGhleSBhcmUgc2Vs
Zi1leHBsYW5hdG9yeSBmb3IgdXBzdHJlYW0KPj4gYWNjZXB0YW5jZS4KPj4KPj4gSSB3aWxsIHRy
eSB0byBwb3N0IHRoZW0gYW5kIGFsc28gYW5zd2VyIHlvdXIgZW1haWwgaW4gZGV0YWlsIHdoZW4g
SQo+PiByZXR1cm4gYmFjayBmcm9tIGhvbGlkYXlzLgo+Pgo+PiBUaGFua3MgZm9yIHlvdXIgcGF0
aWVuY2UuCj4+Cj4+IFJlZ2FyZHMsCj4+IEJodXBlc2gKPj4KPj4gKFNlbnQgZnJvbSBteSBBbmRy
b2lkIFBob25lKQo+Pgo+PiBPbiBUdWUsIE9jdCAyOSwgMjAxOSBhdCAyOjIzIEFNIEthenVoaXRv
IEhhZ2lvIDxrLWhhZ2lvQGFiLmpwLm5lYy5jb20+IHdyb3RlOgo+Pj4KPj4+IEhpIEJodXBlc2gs
Cj4+Pgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4+PiBJIGFtIHdvcmtpbmcg
b24gdGhlIGNoYW5nZXMgaW4gdGhlIHZtY29yZWluZm8gYWZ0ZXIgdGhlIDUyLWJpdCBWQQo+Pj4+
Pj4gY2hhbmdlcyBmcm9tIFN0ZXZlIHdlcmUgYWNjZXB0ZWQgaW4gTGludXggNS40LXJjMSAoIlN1
cHBvcnQgZm9yIDUyLWJpdAo+Pj4+Pj4gdmlydHVhbCBhZGRyZXNzaW5nIGluIGtlcm5lbCBzcGFj
ZeKAnSkuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+ICAgICBJIGRvbuKAmXQgc2VlIGEgY29tbWl0IHdpdGgg
dGhpcyB0aXRsZSBpbiBsaW51eC1zdGFibGUgIDsgIENvdWxkIHlvdSBiZSBhIGxpdHRsZSBtb3Jl
IHNwZWNpZmljIHdoYXQKPj4+PiBmaWxlICB0aGF0IHdhcyBhcHBsaWVkIHRvID8KPj4+Pgo+Pj4+
IFlvdSBjYW4gaGF2ZSBhIGxvb2sgYXQgdGhlIGZvbGxvd2luZyBjb21taXQgKGFuZCBkZXBlbmRl
bmNpZXMpIGluCj4+Pj4gTGludXMncyB0cmVlIChnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0KQo+Pj4+IHdoaWNoIGludHJvZHVj
ZWQgNTItYml0IGtlcm5lbCBWQXMgZm9yIGFybTY0IGFyY2hpdGVjdHVyZToKPj4+Pgo+Pj4+IGNv
bW1pdCBiNmQwMGQ0N2U4MWE0OWY2Y2Y0NjI1MThjMTA0MDhmMzdhM2U2Nzg1Cj4+Pj4gQXV0aG9y
OiBTdGV2ZSBDYXBwZXIgPHN0ZXZlLmNhcHBlckBhcm0uY29tPgo+Pj4+IERhdGU6ICAgV2VkIEF1
ZyA3IDE2OjU1OjIyIDIwMTkgKzAxMDAKPj4+Pgo+Pj4+ICAgICAgYXJtNjQ6IG1tOiBJbnRyb2R1
Y2UgNTItYml0IEtlcm5lbCBWQXMKPj4+Cj4+PiBUaGFuayB5b3UgZm9yIHdvcmtpbmcgb24gdGhp
cy4KPj4+Cj4+PiBJJ3ZlIGFsc28gaGFkIGEgbG9vayBhdCB0aGVtLCBhbmQgbXkgdW5kZXJzdGFu
ZGluZyBpcyB0aGF0IHdlIG5lZWQKPj4+IGluIHZtY29yZWluZm8gYXQgbGVhc3Q6Cj4+Pgo+Pj4g
LSBUQ1JfRUwxLlQxU1ogKGFsbW9zdCBlcXVhbHMgdG8gdmFiaXRzX2FjdHVhbCkgdG8gZGV0ZXJt
aW5lOgo+Pj4gICAgbyBQQUdFX09GRlNFVAo+Pj4gICAgbyB3aGV0aGVyIHRoZSBrZXJuZWwgaGFz
IHRoZSAiZmxpcHBlZCIgbGluZWFyIG1hcCBhbmQgdGhlIG90aGVycy4KPj4+ICAgICAgV2UgbmVl
ZCBhIGZpeCB0byBfX3BhKCkgd2l0aCBpdC4gKHNlZSB0aGUgcGF0Y2ggYmVsb3cpCj4+Pgo+Pj4g
LSBQQV9CSVRTIG9yIE1BWF9QSFlTTUVNX0JJVFMgdG8gZGV0ZXJtaW5lOgo+Pj4gICAgbyB3aGV0
aGVyIFNQQVJTRU1FTV9FWFRSRU1FIG9yIG5vdCwgaW4gaXNfc3BhcnNlbWVtX2V4dHJlbWUoKQo+
Pj4gICAgbyB3aGV0aGVyIHRoZSBrZXJuZWwgaGFzIDQ4LWJpdCBvciA1Mi1iaXQgUEEgdG8gc3dp
dGNoCj4+PiAgICAgIHRoZSBjYWxjdWxhdGlvbiBvZiBwdGUtdG8tcGFkZHIuICh0aGlzIG1pZ2h0
IGJlIHVubmVjZXNzYXJ5PykKPj4+Cj4+PiBJcyB0aGlzIHJpZ2h0Pwo+Pj4KPj4+IEFuZCB3cm90
ZSBhIHZlcnkgZHJhZnQgcGF0Y2gsIHdoaWNoIHdvcmtzIG9uIGEgNS40LXJjNCBrZXJuZWwgdGhh
dAo+Pj4gSSBtb2RpZmllZCB0byBoYXZlIE5VTUJFUih2YWJpdHNfYWN0dWFsKSBhbmQgTlVNQkVS
KE1BWF9QSFlTTUVNX0JJVFMpLAo+Pj4gd2l0aCBWQV9CSVRTPTQ4IGNvbmZpZyBvciBWQV9CSVRT
PTUyIGNvbmZpZyBydW5uaW5nIGluIDQ4LWJpdCBtb2RlLgo+Pj4gaHR0cHM6Ly91cmxkZWZlbnNl
LnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19naXRodWIuY29tX2stMkRoYWdpb19t
YWtlZHVtcGZpbGVfY29tbWl0X2ZkOWQ4NmVhMDViMzhlOWVkYmI4YzBhYzNlYmQ2MTJkNWQ0ODVk
ZjMmZD1Ed0lHYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5F
JnI9dDJmUGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPUQzb3doQ0Zz
SlI4WDBCaGwwVGphM0poNUJGaHZLa3VLcGlQbmo5YVpuWkUmcz1aTG51M3J2eHFhNk5QVVJtR05Z
cENHNmcwSDl5RTNDQ2F6UU1XTzQwcU9vJmU9Cj4+Pgo+Pj4gKEkgZG9uJ3QgaW50ZW5kIHRvIGV4
cG9ydCB0aGVtIGFzIHRoZXkgYXJlLCBpdCdzIGp1c3QgZm9yIGFuIGV4cGVyaW1lbnQuCj4+PiBB
bmQgbm8gc3VwcG9ydCBmb3IgLS1tZW0tdXNhZ2Ugb3B0aW9uLCAicmVhbCIgNTItYml0IFBBLCBh
bmQgc28gb24uKQo+Pj4KPj4+IEFzIGZvciBNQVhfUEhZU01FTV9CSVRTLCBJIGRvbid0IHN0aWNr
IHRvIGV4cG9ydCBpdCBmb3IgYWxsIGFyY2hpdGVjdHVyZXMsCj4+PiBhbHRob3VnaCBJIHRvbGQg
eW91IHRoYXQgaXQgd291bGQgYmUgYmV0dGVyIHRvIGRvIHNvIGluIHRoZSBwYXN0Lgo+Pj4gSWYg
aXQncyBoYXJkIHRvIGRvIHNvLCBpdCdzIGZpbmUgd2l0aCBtZSB0byBleHBvcnQgaXQgb3Igc29t
ZXRoaW5nIHNpbWlsYXIKPj4+IG9ubHkgZm9yIGFybTY0IGZvciBub3cuLgo+Pj4KPj4+IFlvdXIg
dGhvdWdodHM/Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gS2F6dQo+Pj4KPj4KPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGtleGVjIG1haWxpbmcgbGlz
dAo+IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zw
b2ludC5jb20vdjIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuaW5mcmFkZWFkLm9yZ19tYWlsbWFuX2xp
c3RpbmZvX2tleGVjJmQ9RHdJR2FRJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVC
NjVlYXBJX0puRSZyPXQyZlBnOUQ4N0Y3RDhqbTBfM0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMm
bT1EM293aENGc0pSOFgwQmhsMFRqYTNKaDVCRmh2S2t1S3BpUG5qOWFablpFJnM9SmxjREQtMzVv
YWNkc0xiem5WdmZVM0dsOTN6cDFONTNQMlhjQzZfV2N1cyZlPQo+IAoKCi0tIApUaGFuayBZb3Us
CkpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtl
eGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
