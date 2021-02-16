@extends('template.main')

@section('main_body')
                    <h1 class="mt-4">Songs</h1>
                    <div class="card mb-4">
                        
                    @include('messages')
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>
                            Songs
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Song Title</th>
                                            <th>Artist</th>
                                            <th>Lyrics</th>
                                            <th colspan="2" style="text-align: center"><span class="fa fa-cog"></span></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <tr>
                                                <th>ID</th>
                                                <th> Song Title</th>
                                                <th>Artist</th>
                                                <th>Lyrics</th>
                                                <th colspan="2" style="text-align: center"><span class="fa fa-cog"></span></th>
                                            </tr>
                                        </tr>
                                    </tfoot>
                                    
                                    <tbody>
                                    @if (count($lyrics) > 0)
                                    
                                        @foreach ($lyrics as $item)
                                                <tr>
                                                    <td>{{ $item->id }}</td>
                                                    <td><a href="/lyrics/{{$item->id}}">{{ $item->title }}</a></td>
                                                    <td>{{ $item->artist }}</td>
                                                    <td>{{ $item->lyrics }}</td>
                                                    <td style="text-align: center"><a href="/lyrics/{{$item->id}}/edit" class="btn btn-success"><span class="fa fa-pen"></span></a></td>
                                                    <td style="text-align: center">
                                                        <form action="/lyrics/{{$item->id}}" method="post">
                                                            @csrf
                                                            <input type="hidden" name="_method" value="DELETE">
                                                            <button type="submit" class="btn btn-danger"><span class="fa fa-trash"></span></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                        @endforeach
                                    @else
                                        <tr><td colspan="4">No records found</td></tr>
                                    @endif
                                    
                                    </tbody> 
                                </table>
                            </div>
                        </div>
                    </div>
@endsection